class DataGenerators::NationalTeamGenerator
  def self.generate
    # Create South American national teams with their FIFA rankings
    teams_data = [
      {name: "Argentina", fifa_ranking: 1, emoji: "🇦🇷"},
      {name: "Brasil", fifa_ranking: 5, emoji: "🇧🇷"},
      {name: "Uruguay", fifa_ranking: 11, emoji: "🇺🇾"},
      {name: "Colombia", fifa_ranking: 12, emoji: "🇨🇴"},
      {name: "Ecuador", fifa_ranking: 24, emoji: "🇪🇨"},
      {name: "Perú", fifa_ranking: 40, emoji: "🇵🇪"},
      {name: "Venezuela", fifa_ranking: 47, emoji: "🇻🇪"},
      {name: "Chile", fifa_ranking: 50, emoji: "🇨🇱"},
      {name: "Paraguay", fifa_ranking: 53, emoji: "🇵🇾"},
      {name: "Bolivia", fifa_ranking: 79, emoji: "🇧🇴"}
    ]

    teams_data.each do |team_data|
      team = NationalTeam.find_or_initialize_by(name: team_data[:name])
      team.fifa_ranking = team_data[:fifa_ranking]
      team.emoji = team_data[:emoji]
      team.save!
    end
  end
end
