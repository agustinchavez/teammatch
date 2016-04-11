class RemoveProviderColumnFromPlayers < ActiveRecord::Migration
  def change
    remove_column :players, :provider
  end
end
