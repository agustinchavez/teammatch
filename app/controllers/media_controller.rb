class MediaController < ApplicationController

  def new

  end

  def create
    current_player.media.create(media_params)
    redirect_to player_path(current_player)
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  def addresource
    render :'athletes-add-media', layout: false
  end

  private

  def media_params
    media_params = params.require(:media).permit(:media_type, :content, :link)
  end

end
