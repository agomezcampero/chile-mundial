class CreateMatches < ActiveRecord::Migration[8.0]
  def change
    create_table :matches do |t|
      t.date :date
      t.belongs_to :home_team, null: false, foreign_key: {to_table: :national_teams}
      t.belongs_to :away_team, null: false, foreign_key: {to_table: :national_teams}
      t.integer :home_goals, null: false
      t.integer :away_goals, null: false
      t.boolean :played, default: false

      t.timestamps
    end
  end
end
