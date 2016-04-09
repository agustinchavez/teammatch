class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :phone, null: false
      t.text :info

      t.timestamps null: false
    end
  end
end
