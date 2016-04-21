class MediaController < ApplicationController

  def new
    if params[:player_id]
       @showable_type = "Player"
       @showable_id = params[:player_id]
     elsif params[:team_id]
       @showable_type = "Team"
       @showable_id = params[:team_id]
     end
  end

  def create
    puts params
    if params[:media][:showable_type] == "Player"
      mr = Media.new(media_params)
      mr.showable = current_player
      mr.save!
      redirect_to player_path(current_player)
    elsif params[:media][:showable_type] == "Team"
      Media.create!(media_params)
      redirect_to team_path(params[:media][:showable_id])
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
    if params["team_id"]
      @media = Media.find(params[:id])
      @media.destroy
      redirect_to team_path(params[:team_id])
    else
      @media = Media.find(params[:id])
      @media.destroy
      redirect_to player_path(current_player)
    end
  end

  def addresource
    render :'athletes-add-media', layout: false
  end

  private

  def media_params
    media_params = params.require(:media).permit(:media_type, :content, :link, :showable_id, :showable_type)
  end

end
