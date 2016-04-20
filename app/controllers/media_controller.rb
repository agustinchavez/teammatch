class MediaController < ApplicationController

  def new
    # render :'athletes-media'
    # @media = Media.new
  end

  def create
    binding.pry
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
