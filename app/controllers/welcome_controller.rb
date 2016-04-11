class WelcomeController < ApplicationController
  def index
    @positions = Position.all
    @sports = Sport.all
  end
end
