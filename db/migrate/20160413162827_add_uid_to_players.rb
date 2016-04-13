class AddUidToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :uid, :string
  end
end
