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
    @player = current_player
    @team = @player.teams.create(team_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def team_params
    team_params = params.require(:team).permit(:team_name, :info, :admin_id)
  end

end
