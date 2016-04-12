class WelcomeController < ApplicationController

  def index
    @postions = Position.all
    @sports = Sport.all
  end

  def search
    @postions = Position.all
    @sports = Sport.all
    if params[:type] == 'athletes'
      render :'athletes_search'
    else
      render :'team_search'
    end
  end
end
