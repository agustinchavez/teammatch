class RemoveUidColumnFromPlayers < ActiveRecord::Migration
  def change
    remove_column :players, :uid
  end
end
