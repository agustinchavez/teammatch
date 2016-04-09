class PositionsController < ApplicationController

  def new
  end

  def create
  end

  def show
  end

  def destroy
  end

  private

  def position_params
    position_params = params.require(:position).permit(:name)
  end

end
