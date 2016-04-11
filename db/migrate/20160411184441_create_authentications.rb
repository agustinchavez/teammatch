class CreateAuthentications < ActiveRecord::Migration
  def change
    create_table :authentications do |t|
      t.string :uid
      t.string :provider
      t.references :player

      t.timestamps null: false
    end

    add_index :authentications, :player_id
  end
end
