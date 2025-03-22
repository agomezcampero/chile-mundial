class SimulationsService
  HOME_GOALS_DISTRIBUTION = [
    0, 0, 0, 0,
    1, 1, 1, 1, 1, 1,
    2, 2, 2, 2,
    3, 3,
    4,
    5
  ]

  AWAY_GOALS_DISTRIBUTION = [
    0, 0, 0, 0, 0, 0,
    1, 1, 1, 1, 1, 1,
    2, 2, 2, 2,
    3,
    4
  ]

  # results is a hash of match_id => {home_goals: int, away_goals: int}
  def initialize(results, simulation_type: "random")
    @matches = Match.all.includes(:home_team, :away_team)
    @original_standings = NationalTeam.standings_hash
    @simulation_type = simulation_type

    results.each do |match_id, score|
      match = @matches.find { |m| m.id.to_s == match_id }

      home_goals = score[:home_goals].to_i
      away_goals = score[:away_goals].to_i
      match.home_goals = home_goals
      match.away_goals = away_goals
      match.played = true

      @original_standings[match.home_team.name] = {
        matches_played: @original_standings[match.home_team.name][:matches_played] + 1,
        points: @original_standings[match.home_team.name][:points] + match.home_team_points,
        goal_difference: @original_standings[match.home_team.name][:goal_difference] + home_goals - away_goals,
        goals_for: @original_standings[match.home_team.name][:goals_for] + home_goals,
        goals_against: @original_standings[match.home_team.name][:goals_against] + away_goals
      }

      @original_standings[match.away_team.name] = {
        matches_played: @original_standings[match.away_team.name][:matches_played] + 1,
        points: @original_standings[match.away_team.name][:points] + match.away_team_points,
        goal_difference: @original_standings[match.away_team.name][:goal_difference] + away_goals - home_goals,
        goals_for: @original_standings[match.away_team.name][:goals_for] + away_goals,
        goals_against: @original_standings[match.away_team.name][:goals_against] + home_goals
      }
    end

    @other_matches = @matches.select { |m| !m.played? }
  end

  def run
    results = {
      1 => 0,
      2 => 0,
      3 => 0,
      4 => 0,
      5 => 0,
      6 => 0,
      7 => 0,
      8 => 0,
      9 => 0,
      10 => 0
    }
    1000.times do
      position = run_simulation
      results[position] += 1
    end

    results
  end

  def run_simulation
    @simulation_standings = @original_standings.dup
    @other_matches.each do |match|
      simulate_and_store_match_results(match)
    end

    sorted_standings = @simulation_standings.sort_by { |team, stats| [-stats[:points], -stats[:goal_difference], -stats[:goals_for]] }
    sorted_standings.find_index { |team, stats| team == "Chile" } + 1
  end

  def simulate_and_store_match_results(match)
    if @simulation_type == "random"
      simulate_random_match(match)
    elsif @simulation_type == "too_good_to_be_true"
      simulate_too_good_to_be_true_match(match)
    elsif @simulation_type == "fifa_ranking"
      simulate_fifa_ranking_match(match)
    end

    match.played = true

    @simulation_standings[match.home_team.name] = {
      matches_played: @simulation_standings[match.home_team.name][:matches_played] + 1,
      points: @simulation_standings[match.home_team.name][:points] + match.home_team_points,
      goal_difference: @simulation_standings[match.home_team.name][:goal_difference] + match.home_goals - match.away_goals,
      goals_for: @simulation_standings[match.home_team.name][:goals_for] + match.home_goals,
      goals_against: @simulation_standings[match.home_team.name][:goals_against] + match.away_goals
    }

    @simulation_standings[match.away_team.name] = {
      matches_played: @simulation_standings[match.away_team.name][:matches_played] + 1,
      points: @simulation_standings[match.away_team.name][:points] + match.away_team_points,
      goal_difference: @simulation_standings[match.away_team.name][:goal_difference] + match.away_goals - match.home_goals,
      goals_for: @simulation_standings[match.away_team.name][:goals_for] + match.away_goals,
      goals_against: @simulation_standings[match.away_team.name][:goals_against] + match.home_goals
    }
  end

  def simulate_random_match(match)
    match.home_goals = HOME_GOALS_DISTRIBUTION.sample
    match.away_goals = AWAY_GOALS_DISTRIBUTION.sample
  end

  def simulate_too_good_to_be_true_match(match)
    if direct_rival?(match.home_team) && direct_rival?(match.away_team)
      match.home_goals = 0
      match.away_goals = 0
    elsif direct_rival?(match.home_team)
      match.home_goals = 0
      match.away_goals = 3
    elsif direct_rival?(match.away_team)
      match.home_goals = 3
      match.away_goals = 0
    elsif match.home_team == paraguay
      match.home_goals = 0
      match.away_goals = 3
    elsif match.away_team == paraguay
      match.home_goals = 3
      match.away_goals = 0
    else
      simulate_random_match(match)
    end
  end

  def simulate_fifa_ranking_match(match)
    home_ranking = match.home_team.fifa_ranking
    away_ranking = match.away_team.fifa_ranking

    # Calculate probability based on FIFA ranking difference
    ranking_diff = (home_ranking - away_ranking).abs
    home_advantage = 20 # Home advantage factor

    home_win_probability = if home_ranking < away_ranking # Lower ranking is better
      0.5 + (ranking_diff / 100.0) + (home_advantage / 100.0)
    else
      0.5 - (ranking_diff / 100.0) + (home_advantage / 100.0)
    end

    # Clamp probability between 0.2 and 0.8
    home_win_probability = home_win_probability.clamp(0.2, 0.8)

    # Determine match result based on probability
    result = rand

    if result < home_win_probability
      # Home team wins
      match.home_goals = [1, 2, 3, 4].sample
      match.away_goals = [0, 1, 2].sample
      match.away_goals = [match.home_goals - 1, 0].max if match.away_goals >= match.home_goals
    elsif result < home_win_probability + 0.2 # 20% chance of draw
      goals = [0, 1, 2].sample
      match.home_goals = goals
      match.away_goals = goals
    else
      match.away_goals = [1, 2, 3].sample
      match.home_goals = [0, 1, 2].sample
      match.home_goals = [match.away_goals - 1, 0].max if match.home_goals >= match.away_goals
    end
  end

  def direct_rival?(team)
    direct_rivals.include?(team)
  end

  def direct_rivals
    @direct_rivals ||= [NationalTeam.bolivia, NationalTeam.venezuela, NationalTeam.peru]
  end

  def paraguay
    @paraguay ||= NationalTeam.paraguay
  end
end
