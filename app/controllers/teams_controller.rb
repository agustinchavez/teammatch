class TeamsController < ApplicationController

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

  def team_params
    team_params = params.require(:team).permit(:name, :info, :admin_id)
  end

end
