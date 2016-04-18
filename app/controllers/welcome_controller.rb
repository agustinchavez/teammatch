class WelcomeController < ApplicationController

  def index
    @postions = Position.all
    @sports = Sport.all
    @athletes = Player.all
    @teams = Team.all
  end

  def edit
   @player = Player.find(params[:id])
   @sports = Sport.pluck(:name)
  end

  def search
    if params[:group] == 'Athletes'
      @athletes = Athlete.all
      @sports = Sport.all
      @positions = Position.all
      render "players/_athletes", layout: false
    elsif params[:sport] && params[:group] == "Teams"
      @sport = Sport.find_by(name: params[:sport])
      @teams = @sport.teams
      render "teams/_teams-sorted", layout: false
    elsif params[:sport] && params[:group] == "Athletes"
       @sport = Sport.find_by(name: params[:sport])
       @athletes = @sport.players
       render "players/_athletes-sorted"
   elsif params[:group] == 'Teams'
    @teams = Team.all
    @sports = Sport.all
    render "teams/_teams", layout: false
  end
end
end
