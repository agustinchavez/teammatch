class WelcomeController < ApplicationController

  def index
    @postions = Position.all
    @sports = Sport.all
  end

  def search
    if params[:group] == 'Athletes'
      @athletes = Player.all
      @sports = Sport.all
      render "players/_athletes-sport", layout: false
    else
      @teams = Team.all
      @sports = Sport.all
      render "teams/_teams-sport", layout: false
    end
  end
end
