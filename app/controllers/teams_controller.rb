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
  end

  def update
    @team = Team.find(params[:id])
    if @team
      @team.update_attributes(team_params)
      redirect_to team_path(@team)
    else
      render :edit
    end
  end

  def destroy
    if @team.destroy
      redirect_to root_path
    else
      @errors = @team.errors.full_messages
  end

  def search
    render :teams_search_path
  end

  private

  def team_params
    team_params = params.require(:team).permit(:team_name, :info, :admin_id)
  end

end
