class WelcomeController < ApplicationController

  def index
    @postions = Position.all
    @sports = Sport.all
  end

  def search
    if params[:group] == 'Athletes'
      @athletes = Athlete.all
      @sports = Sport.all
      render "players/_athletes", layout: false
    elsif params[:sport] && params[:group] == "Teams"
      @sport = Sport.find_by(name: params[:sport])
      @teams = @sport.teams
      binding.pry
      render "teams/_teams-sorted", layout: false
    elsif params[:group] == 'Teams'
      @teams = Team.all
      @sports = Sport.all
      render "teams/_teams", layout: false
    elsif params[:sport]
  end
end
end
