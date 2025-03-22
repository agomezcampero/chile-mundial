class DataGenerators::MatchesGenerator
  def self.generate
    generate_matchday_1
    generate_matchday_2
    generate_matchday_3
    generate_matchday_4
    generate_matchday_5
    generate_matchday_6
    generate_matchday_7
    generate_matchday_8
    generate_matchday_9
    generate_matchday_10
    generate_matchday_11
    generate_matchday_12
    generate_matchday_13
    generate_matchday_14
    generate_matchday_15
    generate_matchday_16
    generate_matchday_17
    generate_matchday_18
  end

  def self.generate_matchday_1
    # Paraguay vs Peru - 7 September 2023
    Match.create!(
      date: Date.new(2023, 9, 7),
      home_team: NationalTeam.paraguay,
      away_team: NationalTeam.peru,
      home_goals: 0,
      away_goals: 0,
      played: true
    )

    # Colombia vs Venezuela - 7 September 2023
    Match.create!(
      date: Date.new(2023, 9, 7),
      home_team: NationalTeam.colombia,
      away_team: NationalTeam.venezuela,
      home_goals: 1,
      away_goals: 0,
      played: true
    )

    # Argentina vs Ecuador - 7 September 2023
    Match.create!(
      date: Date.new(2023, 9, 7),
      home_team: NationalTeam.argentina,
      away_team: NationalTeam.ecuador,
      home_goals: 1,
      away_goals: 0,
      played: true
    )

    # Uruguay vs Chile - 8 September 2023
    Match.create!(
      date: Date.new(2023, 9, 8),
      home_team: NationalTeam.uruguay,
      away_team: NationalTeam.chile,
      home_goals: 3,
      away_goals: 1,
      played: true
    )

    # Brazil vs Bolivia - 8 September 2023
    Match.create!(
      date: Date.new(2023, 9, 8),
      home_team: NationalTeam.brazil,
      away_team: NationalTeam.bolivia,
      home_goals: 5,
      away_goals: 1,
      played: true
    )
  end

  def self.generate_matchday_2
    # Bolivia vs Argentina - 12 September 2023
    Match.create!(
      date: Date.new(2023, 9, 12),
      home_team: NationalTeam.bolivia,
      away_team: NationalTeam.argentina,
      home_goals: 0,
      away_goals: 3,
      played: true
    )

    # Ecuador vs Uruguay - 12 September 2023
    Match.create!(
      date: Date.new(2023, 9, 12),
      home_team: NationalTeam.ecuador,
      away_team: NationalTeam.uruguay,
      home_goals: 2,
      away_goals: 1,
      played: true
    )

    # Venezuela vs Paraguay - 12 September 2023
    Match.create!(
      date: Date.new(2023, 9, 12),
      home_team: NationalTeam.venezuela,
      away_team: NationalTeam.paraguay,
      home_goals: 1,
      away_goals: 0,
      played: true
    )

    # Chile vs Colombia - 12 September 2023
    Match.create!(
      date: Date.new(2023, 9, 12),
      home_team: NationalTeam.chile,
      away_team: NationalTeam.colombia,
      home_goals: 0,
      away_goals: 0,
      played: true
    )

    # Peru vs Brazil - 12 September 2023
    Match.create!(
      date: Date.new(2023, 9, 12),
      home_team: NationalTeam.peru,
      away_team: NationalTeam.brazil,
      home_goals: 0,
      away_goals: 1,
      played: true
    )
  end

  def self.generate_matchday_3
    # Colombia vs Uruguay - 12 October 2023
    Match.create!(
      date: Date.new(2023, 10, 12),
      home_team: NationalTeam.colombia,
      away_team: NationalTeam.uruguay,
      home_goals: 2,
      away_goals: 2,
      played: true
    )

    # Bolivia vs Ecuador - 12 October 2023
    Match.create!(
      date: Date.new(2023, 10, 12),
      home_team: NationalTeam.bolivia,
      away_team: NationalTeam.ecuador,
      home_goals: 1,
      away_goals: 2,
      played: true
    )

    # Argentina vs Paraguay - 12 October 2023
    Match.create!(
      date: Date.new(2023, 10, 12),
      home_team: NationalTeam.argentina,
      away_team: NationalTeam.paraguay,
      home_goals: 1,
      away_goals: 0,
      played: true
    )

    # Chile vs Peru - 12 October 2023
    Match.create!(
      date: Date.new(2023, 10, 12),
      home_team: NationalTeam.chile,
      away_team: NationalTeam.peru,
      home_goals: 2,
      away_goals: 0,
      played: true
    )

    # Brazil vs Venezuela - 12 October 2023
    Match.create!(
      date: Date.new(2023, 10, 12),
      home_team: NationalTeam.brazil,
      away_team: NationalTeam.venezuela,
      home_goals: 1,
      away_goals: 1,
      played: true
    )
  end

  def self.generate_matchday_4
    # Venezuela vs Chile - 17 October 2023
    Match.create!(
      date: Date.new(2023, 10, 17),
      home_team: NationalTeam.venezuela,
      away_team: NationalTeam.chile,
      home_goals: 3,
      away_goals: 0,
      played: true
    )

    # Paraguay vs Bolivia - 17 October 2023
    Match.create!(
      date: Date.new(2023, 10, 17),
      home_team: NationalTeam.paraguay,
      away_team: NationalTeam.bolivia,
      home_goals: 1,
      away_goals: 0,
      played: true
    )

    # Ecuador vs Colombia - 17 October 2023
    Match.create!(
      date: Date.new(2023, 10, 17),
      home_team: NationalTeam.ecuador,
      away_team: NationalTeam.colombia,
      home_goals: 0,
      away_goals: 0,
      played: true
    )

    # Uruguay vs Brazil - 17 October 2023
    Match.create!(
      date: Date.new(2023, 10, 17),
      home_team: NationalTeam.uruguay,
      away_team: NationalTeam.brazil,
      home_goals: 2,
      away_goals: 0,
      played: true
    )

    # Peru vs Argentina - 17 October 2023
    Match.create!(
      date: Date.new(2023, 10, 17),
      home_team: NationalTeam.peru,
      away_team: NationalTeam.argentina,
      home_goals: 0,
      away_goals: 2,
      played: true
    )
  end

  def self.generate_matchday_5
    # Bolivia vs Peru - 16 November 2023
    Match.create!(
      date: Date.new(2023, 11, 16),
      home_team: NationalTeam.bolivia,
      away_team: NationalTeam.peru,
      home_goals: 2,
      away_goals: 0,
      played: true
    )

    # Venezuela vs Ecuador - 16 November 2023
    Match.create!(
      date: Date.new(2023, 11, 16),
      home_team: NationalTeam.venezuela,
      away_team: NationalTeam.ecuador,
      home_goals: 0,
      away_goals: 0,
      played: true
    )

    # Colombia vs Brazil - 16 November 2023
    Match.create!(
      date: Date.new(2023, 11, 16),
      home_team: NationalTeam.colombia,
      away_team: NationalTeam.brazil,
      home_goals: 2,
      away_goals: 1,
      played: true
    )

    # Argentina vs Uruguay - 16 November 2023
    Match.create!(
      date: Date.new(2023, 11, 16),
      home_team: NationalTeam.argentina,
      away_team: NationalTeam.uruguay,
      home_goals: 0,
      away_goals: 2,
      played: true
    )

    # Chile vs Paraguay - 16 November 2023
    Match.create!(
      date: Date.new(2023, 11, 16),
      home_team: NationalTeam.chile,
      away_team: NationalTeam.paraguay,
      home_goals: 0,
      away_goals: 0,
      played: true
    )
  end

  def self.generate_matchday_6
    # Paraguay vs Colombia - 21 November 2023
    Match.create!(
      date: Date.new(2023, 11, 21),
      home_team: NationalTeam.paraguay,
      away_team: NationalTeam.colombia,
      home_goals: 0,
      away_goals: 1,
      played: true
    )

    # Uruguay vs Bolivia - 21 November 2023
    Match.create!(
      date: Date.new(2023, 11, 21),
      home_team: NationalTeam.uruguay,
      away_team: NationalTeam.bolivia,
      home_goals: 3,
      away_goals: 0,
      played: true
    )

    # Ecuador vs Chile - 21 November 2023
    Match.create!(
      date: Date.new(2023, 11, 21),
      home_team: NationalTeam.ecuador,
      away_team: NationalTeam.chile,
      home_goals: 1,
      away_goals: 0,
      played: true
    )

    # Brazil vs Argentina - 21 November 2023
    Match.create!(
      date: Date.new(2023, 11, 21),
      home_team: NationalTeam.brazil,
      away_team: NationalTeam.argentina,
      home_goals: 0,
      away_goals: 1,
      played: true
    )

    # Peru vs Venezuela - 21 November 2023
    Match.create!(
      date: Date.new(2023, 11, 21),
      home_team: NationalTeam.peru,
      away_team: NationalTeam.venezuela,
      home_goals: 1,
      away_goals: 1,
      played: true
    )
  end

  def self.generate_matchday_7
    # Bolivia vs Venezuela - 5 September 2024
    Match.create!(
      date: Date.new(2024, 9, 5),
      home_team: NationalTeam.bolivia,
      away_team: NationalTeam.venezuela,
      home_goals: 4,
      away_goals: 0,
      played: true
    )

    # Argentina vs Chile - 5 September 2024
    Match.create!(
      date: Date.new(2024, 9, 5),
      home_team: NationalTeam.argentina,
      away_team: NationalTeam.chile,
      home_goals: 3,
      away_goals: 0,
      played: true
    )

    # Uruguay vs Paraguay - 6 September 2024
    Match.create!(
      date: Date.new(2024, 9, 6),
      home_team: NationalTeam.uruguay,
      away_team: NationalTeam.paraguay,
      home_goals: 0,
      away_goals: 0,
      played: true
    )

    # Brazil vs Ecuador - 6 September 2024
    Match.create!(
      date: Date.new(2024, 9, 6),
      home_team: NationalTeam.brazil,
      away_team: NationalTeam.ecuador,
      home_goals: 1,
      away_goals: 0,
      played: true
    )

    # Peru vs Colombia - 6 September 2024
    Match.create!(
      date: Date.new(2024, 9, 6),
      home_team: NationalTeam.peru,
      away_team: NationalTeam.colombia,
      home_goals: 1,
      away_goals: 1,
      played: true
    )
  end

  def self.generate_matchday_8
    # Colombia vs Argentina - 10 September 2024
    Match.create!(
      date: Date.new(2024, 9, 10),
      home_team: NationalTeam.colombia,
      away_team: NationalTeam.argentina,
      home_goals: 2,
      away_goals: 1,
      played: true
    )

    # Chile vs Bolivia - 10 September 2024
    Match.create!(
      date: Date.new(2024, 9, 10),
      home_team: NationalTeam.chile,
      away_team: NationalTeam.bolivia,
      home_goals: 1,
      away_goals: 2,
      played: true
    )

    # Ecuador vs Peru - 10 September 2024
    Match.create!(
      date: Date.new(2024, 9, 10),
      home_team: NationalTeam.ecuador,
      away_team: NationalTeam.peru,
      home_goals: 1,
      away_goals: 0,
      played: true
    )

    # Venezuela vs Uruguay - 10 September 2024
    Match.create!(
      date: Date.new(2024, 9, 10),
      home_team: NationalTeam.venezuela,
      away_team: NationalTeam.uruguay,
      home_goals: 0,
      away_goals: 0,
      played: true
    )

    # Paraguay vs Brazil - 10 September 2024
    Match.create!(
      date: Date.new(2024, 9, 10),
      home_team: NationalTeam.paraguay,
      away_team: NationalTeam.brazil,
      home_goals: 1,
      away_goals: 0,
      played: true
    )
  end

  def self.generate_matchday_9
    # Bolivia vs Colombia - 10 October 2024
    Match.create!(
      date: Date.new(2024, 10, 10),
      home_team: NationalTeam.bolivia,
      away_team: NationalTeam.colombia,
      home_goals: 1,
      away_goals: 0,
      played: true
    )

    # Ecuador vs Paraguay - 10 October 2024
    Match.create!(
      date: Date.new(2024, 10, 10),
      home_team: NationalTeam.ecuador,
      away_team: NationalTeam.paraguay,
      home_goals: 0,
      away_goals: 0,
      played: true
    )

    # Venezuela vs Argentina - 10 October 2024
    Match.create!(
      date: Date.new(2024, 10, 10),
      home_team: NationalTeam.venezuela,
      away_team: NationalTeam.argentina,
      home_goals: 1,
      away_goals: 1,
      played: true
    )

    # Chile vs Brazil - 10 October 2024
    Match.create!(
      date: Date.new(2024, 10, 10),
      home_team: NationalTeam.chile,
      away_team: NationalTeam.brazil,
      home_goals: 1,
      away_goals: 2,
      played: true
    )

    # Peru vs Uruguay - 11 October 2024
    Match.create!(
      date: Date.new(2024, 10, 11),
      home_team: NationalTeam.peru,
      away_team: NationalTeam.uruguay,
      home_goals: 1,
      away_goals: 0,
      played: true
    )
  end

  def self.generate_matchday_10
    # Colombia vs Chile - 15 October 2024
    Match.create!(
      date: Date.new(2024, 10, 15),
      home_team: NationalTeam.colombia,
      away_team: NationalTeam.chile,
      home_goals: 4,
      away_goals: 0,
      played: true
    )

    # Paraguay vs Venezuela - 15 October 2024
    Match.create!(
      date: Date.new(2024, 10, 15),
      home_team: NationalTeam.paraguay,
      away_team: NationalTeam.venezuela,
      home_goals: 2,
      away_goals: 1,
      played: true
    )

    # Uruguay vs Ecuador - 15 October 2024
    Match.create!(
      date: Date.new(2024, 10, 15),
      home_team: NationalTeam.uruguay,
      away_team: NationalTeam.ecuador,
      home_goals: 0,
      away_goals: 0,
      played: true
    )

    # Argentina vs Bolivia - 15 October 2024
    Match.create!(
      date: Date.new(2024, 10, 15),
      home_team: NationalTeam.argentina,
      away_team: NationalTeam.bolivia,
      home_goals: 6,
      away_goals: 0,
      played: true
    )

    # Brazil vs Peru - 15 October 2024
    Match.create!(
      date: Date.new(2024, 10, 15),
      home_team: NationalTeam.brazil,
      away_team: NationalTeam.peru,
      home_goals: 4,
      away_goals: 0,
      played: true
    )
  end

  def self.generate_matchday_11
    # Venezuela vs Brazil - 14 November 2024
    Match.create!(
      date: Date.new(2024, 11, 14),
      home_team: NationalTeam.venezuela,
      away_team: NationalTeam.brazil,
      home_goals: 1,
      away_goals: 1,
      played: true
    )

    # Paraguay vs Argentina - 14 November 2024
    Match.create!(
      date: Date.new(2024, 11, 14),
      home_team: NationalTeam.paraguay,
      away_team: NationalTeam.argentina,
      home_goals: 2,
      away_goals: 1,
      played: true
    )

    # Ecuador vs Bolivia - 14 November 2024
    Match.create!(
      date: Date.new(2024, 11, 14),
      home_team: NationalTeam.ecuador,
      away_team: NationalTeam.bolivia,
      home_goals: 4,
      away_goals: 0,
      played: true
    )

    # Uruguay vs Colombia - 15 November 2024
    Match.create!(
      date: Date.new(2024, 11, 15),
      home_team: NationalTeam.uruguay,
      away_team: NationalTeam.colombia,
      home_goals: 3,
      away_goals: 2,
      played: true
    )

    # Peru vs Chile - 15 November 2024
    Match.create!(
      date: Date.new(2024, 11, 15),
      home_team: NationalTeam.peru,
      away_team: NationalTeam.chile,
      home_goals: 0,
      away_goals: 0,
      played: true
    )
  end

  def self.generate_matchday_12
    # Bolivia vs Paraguay - 19 November 2024
    Match.create!(
      date: Date.new(2024, 11, 19),
      home_team: NationalTeam.bolivia,
      away_team: NationalTeam.paraguay,
      home_goals: 2,
      away_goals: 2,
      played: true
    )

    # Colombia vs Ecuador - 19 November 2024
    Match.create!(
      date: Date.new(2024, 11, 19),
      home_team: NationalTeam.colombia,
      away_team: NationalTeam.ecuador,
      home_goals: 0,
      away_goals: 1,
      played: true
    )

    # Argentina vs Peru - 19 November 2024
    Match.create!(
      date: Date.new(2024, 11, 19),
      home_team: NationalTeam.argentina,
      away_team: NationalTeam.peru,
      home_goals: 1,
      away_goals: 0,
      played: true
    )

    # Chile vs Venezuela - 19 November 2024
    Match.create!(
      date: Date.new(2024, 11, 19),
      home_team: NationalTeam.chile,
      away_team: NationalTeam.venezuela,
      home_goals: 4,
      away_goals: 2,
      played: true
    )

    # Brazil vs Uruguay - 19 November 2024
    Match.create!(
      date: Date.new(2024, 11, 19),
      home_team: NationalTeam.brazil,
      away_team: NationalTeam.uruguay,
      home_goals: 1,
      away_goals: 1,
      played: true
    )
  end

  def self.generate_matchday_13
    # Paraguay vs Chile - 20 March 2025
    Match.create!(
      date: Date.new(2025, 3, 20),
      home_team: NationalTeam.paraguay,
      away_team: NationalTeam.chile,
      home_goals: 1,
      away_goals: 0,
      played: true
    )

    # Brazil vs Colombia - 20 March 2025
    Match.create!(
      date: Date.new(2025, 3, 20),
      home_team: NationalTeam.brazil,
      away_team: NationalTeam.colombia,
      home_goals: 2,
      away_goals: 1,
      played: true
    )

    # Peru vs Bolivia - 20 March 2025
    Match.create!(
      date: Date.new(2025, 3, 20),
      home_team: NationalTeam.peru,
      away_team: NationalTeam.bolivia,
      home_goals: 3,
      away_goals: 1,
      played: true
    )

    # Ecuador vs Venezuela - 21 March 2025
    Match.create!(
      date: Date.new(2025, 3, 21),
      home_team: NationalTeam.ecuador,
      away_team: NationalTeam.venezuela,
      home_goals: 2,
      away_goals: 1,
      played: true
    )

    # Uruguay vs Argentina - 21 March 2025
    Match.create!(
      date: Date.new(2025, 3, 21),
      home_team: NationalTeam.uruguay,
      away_team: NationalTeam.argentina,
      home_goals: 0,
      away_goals: 1,
      played: true
    )
  end

  def self.generate_matchday_14
    # Bolivia vs Uruguay - 25 March 2025
    Match.create!(
      date: Date.new(2025, 3, 25),
      home_team: NationalTeam.bolivia,
      away_team: NationalTeam.uruguay,
      home_goals: 0,
      away_goals: 0,
      played: false
    )

    # Colombia vs Paraguay - 25 March 2025
    Match.create!(
      date: Date.new(2025, 3, 25),
      home_team: NationalTeam.colombia,
      away_team: NationalTeam.paraguay,
      home_goals: 0,
      away_goals: 0,
      played: false
    )

    # Venezuela vs Peru - 25 March 2025
    Match.create!(
      date: Date.new(2025, 3, 25),
      home_team: NationalTeam.venezuela,
      away_team: NationalTeam.peru,
      home_goals: 0,
      away_goals: 0,
      played: false
    )

    # Argentina vs Brazil - 25 March 2025
    Match.create!(
      date: Date.new(2025, 3, 25),
      home_team: NationalTeam.argentina,
      away_team: NationalTeam.brazil,
      home_goals: 0,
      away_goals: 0,
      played: false
    )

    # Chile vs Ecuador - 25 March 2025
    Match.create!(
      date: Date.new(2025, 3, 25),
      home_team: NationalTeam.chile,
      away_team: NationalTeam.ecuador,
      home_goals: 0,
      away_goals: 0,
      played: false
    )
  end

  def self.generate_matchday_15
    # Colombia vs Peru - June 2025
    Match.create!(
      date: Date.new(2025, 6, 5),
      home_team: NationalTeam.colombia,
      away_team: NationalTeam.peru,
      home_goals: 0,
      away_goals: 0,
      played: false
    )

    # Venezuela vs Bolivia - June 2025
    Match.create!(
      date: Date.new(2025, 6, 5),
      home_team: NationalTeam.venezuela,
      away_team: NationalTeam.bolivia,
      home_goals: 0,
      away_goals: 0,
      played: false
    )

    # Paraguay vs Uruguay - June 2025
    Match.create!(
      date: Date.new(2025, 6, 5),
      home_team: NationalTeam.paraguay,
      away_team: NationalTeam.uruguay,
      home_goals: 0,
      away_goals: 0,
      played: false
    )

    # Chile vs Argentina - June 2025
    Match.create!(
      date: Date.new(2025, 6, 5),
      home_team: NationalTeam.chile,
      away_team: NationalTeam.argentina,
      home_goals: 0,
      away_goals: 0,
      played: false
    )

    # Ecuador vs Brazil - June 2025
    Match.create!(
      date: Date.new(2025, 6, 5),
      home_team: NationalTeam.ecuador,
      away_team: NationalTeam.brazil,
      home_goals: 0,
      away_goals: 0,
      played: false
    )
  end

  def self.generate_matchday_16
    # Uruguay vs Venezuela - June 2025
    Match.create!(
      date: Date.new(2025, 6, 10),
      home_team: NationalTeam.uruguay,
      away_team: NationalTeam.venezuela,
      home_goals: 0,
      away_goals: 0,
      played: false
    )

    # Peru vs Ecuador - June 2025
    Match.create!(
      date: Date.new(2025, 6, 10),
      home_team: NationalTeam.peru,
      away_team: NationalTeam.ecuador,
      home_goals: 0,
      away_goals: 0,
      played: false
    )

    # Brazil vs Paraguay - June 2025
    Match.create!(
      date: Date.new(2025, 6, 10),
      home_team: NationalTeam.brazil,
      away_team: NationalTeam.paraguay,
      home_goals: 0,
      away_goals: 0,
      played: false
    )

    # Bolivia vs Chile - June 2025
    Match.create!(
      date: Date.new(2025, 6, 10),
      home_team: NationalTeam.bolivia,
      away_team: NationalTeam.chile,
      home_goals: 0,
      away_goals: 0,
      played: false
    )

    # Argentina vs Colombia - June 2025
    Match.create!(
      date: Date.new(2025, 6, 10),
      home_team: NationalTeam.argentina,
      away_team: NationalTeam.colombia,
      home_goals: 0,
      away_goals: 0,
      played: false
    )
  end

  def self.generate_matchday_17
    # Uruguay vs Peru - September 2025
    Match.create!(
      date: Date.new(2025, 9, 4),
      home_team: NationalTeam.uruguay,
      away_team: NationalTeam.peru,
      home_goals: 0,
      away_goals: 0,
      played: false
    )

    # Colombia vs Bolivia - September 2025
    Match.create!(
      date: Date.new(2025, 9, 4),
      home_team: NationalTeam.colombia,
      away_team: NationalTeam.bolivia,
      home_goals: 0,
      away_goals: 0,
      played: false
    )

    # Brazil vs Chile - September 2025
    Match.create!(
      date: Date.new(2025, 9, 4),
      home_team: NationalTeam.brazil,
      away_team: NationalTeam.chile,
      home_goals: 0,
      away_goals: 0,
      played: false
    )

    # Paraguay vs Ecuador - September 2025
    Match.create!(
      date: Date.new(2025, 9, 4),
      home_team: NationalTeam.paraguay,
      away_team: NationalTeam.ecuador,
      home_goals: 0,
      away_goals: 0,
      played: false
    )

    # Argentina vs Venezuela - September 2025
    Match.create!(
      date: Date.new(2025, 9, 4),
      home_team: NationalTeam.argentina,
      away_team: NationalTeam.venezuela,
      home_goals: 0,
      away_goals: 0,
      played: false
    )
  end

  def self.generate_matchday_18
    # Peru vs Paraguay - September 2025
    Match.create!(
      date: Date.new(2025, 9, 9),
      home_team: NationalTeam.peru,
      away_team: NationalTeam.paraguay,
      home_goals: 0,
      away_goals: 0,
      played: false
    )

    # Venezuela vs Colombia - September 2025
    Match.create!(
      date: Date.new(2025, 9, 9),
      home_team: NationalTeam.venezuela,
      away_team: NationalTeam.colombia,
      home_goals: 0,
      away_goals: 0,
      played: false
    )

    # Bolivia vs Brazil - September 2025
    Match.create!(
      date: Date.new(2025, 9, 9),
      home_team: NationalTeam.bolivia,
      away_team: NationalTeam.brazil,
      home_goals: 0,
      away_goals: 0,
      played: false
    )

    # Chile vs Uruguay - September 2025
    Match.create!(
      date: Date.new(2025, 9, 9),
      home_team: NationalTeam.chile,
      away_team: NationalTeam.uruguay,
      home_goals: 0,
      away_goals: 0,
      played: false
    )

    # Ecuador vs Argentina - September 2025
    Match.create!(
      date: Date.new(2025, 9, 9),
      home_team: NationalTeam.ecuador,
      away_team: NationalTeam.argentina,
      home_goals: 0,
      away_goals: 0,
      played: false
    )
  end
end
