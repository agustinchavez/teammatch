class SessionsController < ApplicationController

  def new
  end

  def create
    auth = request.env['omniauth.auth']
    # session[:omniauth] =  auth.except('extra')
    @authentication = Authentication.find_or_create_with_omniauth(auth)
    @authentication.player = current_player
    @authentication.save
    redirect_to root_path, notice: "SIGNED IN"
    # player = Authentication.create_with_omniauth(auth)
    # session[:player_id] = player.id
    # redirect_to root_path "Signed In"
  end

  def destroy
    session[:player_id] = nil
    session[:omniauth] = nil
    redirect_to root_path, notice: "Signed Out"
  end

end
