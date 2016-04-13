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
    @player.destroy
    redirect_to root_path
  end

  def search
    if params["Sport"]
      sport_ids = params["Sport"].map {|e| e[0].to_i}
      sports = Sport.find(sport_ids)
      sports_with_athletes = sports.select {|sport| !sport.players.empty?}
      if sports_with_athletes.count > 1
      @athletes = sports_with_athletes.flat_map {|sport| sport.players}.uniq
      else
      @athletes = sports_with_athletes.map {|sport| sport.players}.flatten
      end
      @athletes_ids = @athletes.map {|athlete| athlete.id}
      @positions = Position.all
      render "players/_athletes-positions", layout: false
    elsif params["Position"]
      athletes_ids = params["athletes"].split(" ").map {|e| e.to_i}
      @original_athletes = Player.find(athletes_ids)
      position_ids = params["Position"].map {|e| e[0].to_i}
      positions = Position.find(position_ids)
      positions_with_athletes = positions.select {|position| !position.players.empty?}
      if positions_with_athletes.count > 1
      @athletes = positions_with_athletes.flat_map {|athlete| athlete.users}.uniq
      else
      @athletes = positions_with_athletes.map {|position| position.users}.flatten
      end
      @ath = @original_at & @ath
      render "players/athletes_sorted", layout: false
    end
  end

  private

  def player_params
    player_params = params.require(:player).permit(:username, :email, :password_digest, :address, :city, :state, :zip, :phone, :info)
  end

end
