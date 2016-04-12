class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def show
    # @team = Team.find(params[:id])
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
  end

  def update
  end

  def destroy
  end

  def search
    render :teams_search_path
  end

  private

  def team_params
    team_params = params.require(:team).permit(:team_name, :info, :admin_id)
  end

end
