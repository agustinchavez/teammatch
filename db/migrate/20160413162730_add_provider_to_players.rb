class AddProviderToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :provider, :string
  end
end
