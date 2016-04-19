class PositionsController < ApplicationController


  def new
    @position = Position.new
  end

  def create
    @player = current_player
    @position = @player.positions.new(position_params)
    if @position.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @player = current_player
    @position = Position.find(params[:id])
    @position.destroy
    redirect_to edit_player_path(@player)
  end

  private

  def position_params
    position_params = params.require(:position).permit(:name)
  end

end
