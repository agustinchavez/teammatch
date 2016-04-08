class CreateTeamSports < ActiveRecord::Migration
  def change
    create_table :team_sports do |t|
      t.integer :team_id
      t.integer :sport_id

      t.timestamps null: false
    end
  end
end
