class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_name
      t.text :info
      t.integer :admin_id

      t.timestamps null: false
    end
  end
end
