class SportsController < ApplicationController

  def new
  end

  def create
  end

  def show
  end

  def destroy
  end

  private

  def sports_params
    sports_params = params.require(:sports).permit(:name)
  end

end
