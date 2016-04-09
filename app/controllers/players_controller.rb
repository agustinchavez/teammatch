class PlayersController < ApplicationController

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def player_params
    player_params = params.require(:player).permit(:username, :email, :password, :address, :city, :state, :zip, :phone, :info)
  end

end
