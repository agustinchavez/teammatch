class SportsController < ApplicationController

  def new
    @sport = Sport.new
  end

  def create
    @player = current_player
    @sports = Sport.all
    if @sports.any? {|sport| sport.name = params[:sport][:name]}
      redirect_to root_path
    end
    @sport = @player.sports.new(sport_params)
    if @sport.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @player =current_player
    @sport = @sport.positions.find(params[:id])
    @sport.destroy
    redirect_to root_path
  end

  private

  def sports_params
    sports_params = params.require(:sports).permit(:name)
  end

end
