class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def show
     @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    @player = urrent_player.teams.new(team_params)
    if @team.save
       redirect_to @team
     else
       status 400
       render :new
     end
  end

  def edit
    @team = Team.find(params[:id])
    @sports = Sport.pluck(:name)
  end

  def update
    @team = Team.find(params[:id])
    if @team
      @team.update_attributes(team_params)
      @members = @team.players

      if @team.save
        binding.pry
        new_admin = params[:team][:admin_name]
        @team.admin = Player.find_or_create_by(username: new_admin.strip)

        if params.has_key?("sport_types")
          @sports = params[:sport_types]
          @sports.each do |sport|
        unless @team.sports.map(&:name).include?(sport)
          @team.sports << Sport.find_or_create_by(name: sport.strip)
        end
      end
    end

    new_members = params[:team][:members].split(",")
    if new_members.any?
      new_members.each do |member|
    unless @members.map(&:username).include?(member)
      @members << Player.find_or_create_by(username: member.strip)
    end
  end
  end
      @team.update_attributes(team_params)
      redirect_to team_path(@team)
    else
      render :edit
    end
    end
  end

  def destroy
    if @team.destroy
      redirect_to root_path
    else
      @errors = @team.errors.full_messages
    end
  end

  def search
    sport_ids = params["Sport"].map {|e| e[0].to_i}
    sports = Sport.find(sport_ids)
    sports_with_teams = sports.select {|sport| !sport.teams.empty?}
    teams_from_sport = sports_with_teams.map {|sport| sport.teams}.flatten
    team_ids = teams_from_sport.map {sport| sport.id}
    @teams = Team.find(team_ids)
    render "teams/_teamssorted", layout: false
  end

  private

  def team_params
    team_params = params.require(:team).permit(:team_name, :info, :admin_id)
  end

end
