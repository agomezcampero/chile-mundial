class Match < ApplicationRecord
  belongs_to :home_team, class_name: "NationalTeam"
  belongs_to :away_team, class_name: "NationalTeam"

  scope :played, -> { where(played: true) }
  scope :unplayed, -> { where(played: false) }

  def home_team_points
    return 0 unless played

    if home_goals > away_goals
      3
    elsif home_goals == away_goals
      1
    else
      0
    end
  end

  def away_team_points
    return 0 unless played

    if away_goals > home_goals
      3
    elsif away_goals == home_goals
      1
    else
      0
    end
  end
end

# == Schema Information
#
# Table name: matches
#
#  id           :integer          not null, primary key
#  away_goals   :integer          not null
#  date         :date
#  home_goals   :integer          not null
#  played       :boolean          default(FALSE)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  away_team_id :integer          not null
#  home_team_id :integer          not null
#
# Indexes
#
#  index_matches_on_away_team_id  (away_team_id)
#  index_matches_on_home_team_id  (home_team_id)
#
# Foreign Keys
#
#  away_team_id  (away_team_id => national_teams.id)
#  home_team_id  (home_team_id => national_teams.id)
#
