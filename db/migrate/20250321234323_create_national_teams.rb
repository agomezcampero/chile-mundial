class CreateNationalTeams < ActiveRecord::Migration[8.0]
  def change
    create_table :national_teams do |t|
      t.string :name, null: false
      t.integer :fifa_ranking, null: false

      t.timestamps
    end
  end
end
