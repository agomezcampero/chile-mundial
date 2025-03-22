class AddEmojiToNationalTeams < ActiveRecord::Migration[8.0]
  def change
    add_column :national_teams, :emoji, :string
  end
end
