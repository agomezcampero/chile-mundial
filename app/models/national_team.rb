class NationalTeam < ApplicationRecord
  has_many :home_matches, class_name: "Match", foreign_key: "home_team_id"
  has_many :away_matches, class_name: "Match", foreign_key: "away_team_id"

  validates :name, presence: true
  validates :fifa_ranking, presence: true, numericality: {greater_than: 0}

  def matches
    home_matches + away_matches
  end

  def matches_played
    home_matches.played.count + away_matches.played.count
  end

  def points
    total = home_matches.sum(&:home_team_points) + away_matches.sum(&:away_team_points)

    if name == "Ecuador"
      total - 3
    else
      total
    end
  end

  def goals_for
    home_matches.sum(&:home_goals) + away_matches.sum(&:away_goals)
  end

  def goals_against
    away_matches.sum(&:home_goals) + home_matches.sum(&:away_goals)
  end

  def goal_difference
    goals_for - goals_against
  end

  def self.standings_hash
    all.each_with_object({}) do |team, hash|
      hash[team.name] = {
        matches_played: team.matches_played,
        points: team.points,
        goals_for: team.goals_for,
        goals_against: team.goals_against,
        goal_difference: team.goal_difference
      }
    end
  end

  def self.argentina
    find_by(name: "Argentina")
  end

  def self.bolivia
    find_by(name: "Bolivia")
  end

  def self.brazil
    find_by(name: "Brasil")
  end

  def self.chile
    find_by(name: "Chile")
  end

  def self.colombia
    find_by(name: "Colombia")
  end

  def self.ecuador
    find_by(name: "Ecuador")
  end

  def self.paraguay
    find_by(name: "Paraguay")
  end

  def self.peru
    find_by(name: "Perú")
  end

  def self.uruguay
    find_by(name: "Uruguay")
  end

  def self.venezuela
    find_by(name: "Venezuela")
  end
end

# == Schema Information
#
# Table name: national_teams
#
#  id           :integer          not null, primary key
#  fifa_ranking :integer          not null
#  name         :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
