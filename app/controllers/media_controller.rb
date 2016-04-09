class MediaController < ApplicationController

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private

  def media_params
    media_params = params.require(:media).permit(:media_type, :content, :link)
  end

end
