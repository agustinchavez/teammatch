class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def new
  end

  def create
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
     @player = Player.find(params[:id])
     if @player
       @player.update_attributes(player_params)
       redirect_to player_path(@player)
     else
       render :edit
     end
   end

  def destroy
  end

  private

  def player_params
    player_params = params.require(:player).permit(:username, :email, :password_digest, :address, :city, :state, :zip, :phone, :info)
  end

end
