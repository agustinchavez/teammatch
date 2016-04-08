class CreatePlayerSports < ActiveRecord::Migration
  def change
    create_table :player_sports do |t|
      t.integer :player_id
      t.integer :sport_id

      t.timestamps null: false
    end
  end
end
