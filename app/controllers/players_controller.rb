class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    auth = request.env['omniauth.auth']
    @player = Player.validate_via_provider(auth)
    @sports = Sport.pluck(:name)
    if @player
      session[:player_id] = @player.id
      if @player.has_positions?
        redirect_to player_path(@player)
      else
        render :new
      end
    else
      redirect_to root_path
    end
  end

  def show
    @player = Player.find(params[:id])
  end

  def edit
    @player = Player.find(params[:id])
    @sports = Sport.pluck(:name)
    @errors = @player.errors.full_messages
  end

  def update
    @player = Player.find(params[:id])

    if @player.save
      binding.pry
      if params.has_key?("sport_types")
        @player.sports = []
        @sports = params[:sport_types]
        @sports.each do |sport|
          @player.sports << Sport.find_or_create_by(name: sport.strip)
        end
      else
        @player.sports.delete_all
      end

      @positions = params[:player][:positions].split(",")
      if @positions.any?
        @positions.each do |position|
          unless @player.positions.map(&:name).include?(position)
            @player.positions << Position.find_or_create_by(name: position.strip)
          end
        end
      end

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
      position_with_athletes = positions.select {|position| !position.players.empty?}
      if position_with_athletes.count > 1
        @athletes = position_with_athletes.flat_map {|position| position.players}.uniq
      else
        @athletes = position_with_athletes.map {|position| position.players}.flatten
      end
      @athletes = @original_athletes & @athletes
      @musicians_ids = @musicians.map {|musician| musician.id}
      render "users/_musicians-location", layout: false
    elsif params["Distance"]
      athletes_ids = params["athletes"].split(" ").map {|e| e.to_i}
      original_athletes = Player.find(athletes_ids)
      player = Player.find(27)
      player_location = [player.latitude, player.longitude]
      distance = params["Distance"][0].to_i
      all_athletes_near = Player.within(distance, :origin => player_location)
      @athletes = original_athletes & all_athletes_near
      render "players/_athletes-sorted", layout: false
    end
  end

  private

  def player_params
    player_params = params.require(:player).permit(:username, :email, :password_digest, :address, :city, :state, :zip, :phone, :info)
  end
end