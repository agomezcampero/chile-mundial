class DataGenerators::NationalTeamGenerator
  def self.generate
    # Create South American national teams with their FIFA rankings
    teams_data = [
      {name: "Argentina", fifa_ranking: 1},
      {name: "Brasil", fifa_ranking: 5},
      {name: "Uruguay", fifa_ranking: 11},
      {name: "Colombia", fifa_ranking: 12},
      {name: "Ecuador", fifa_ranking: 24},
      {name: "Perú", fifa_ranking: 40},
      {name: "Venezuela", fifa_ranking: 47},
      {name: "Chile", fifa_ranking: 50},
      {name: "Paraguay", fifa_ranking: 53},
      {name: "Bolivia", fifa_ranking: 79}
    ]

    teams_data.each do |team_data|
      NationalTeam.create!(team_data)
    end
  end
end
