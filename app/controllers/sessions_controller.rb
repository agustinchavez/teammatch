class SessionsController < ApplicationController

  def new
  end

  def create
    auth = request.env['omniauth.auth']
    # session[:omniauth] =  auth.except('extra')
    @authentication = Authentication.find_with_omniauth(auth)

    if @authentication.nil?
     @authentication = Authentication.create_with_omniauth(auth)
    end

    if logged_in?
      if @authentication.player == current_player
        redirect_to root_path, notice: "SIGNED IN"
      else
        @authentication.player = session[:player_id]
        @authentication.save
        redirect_to root_path, notice: "SIGNED IN"
      end
     else
       if @authentication.player.present?
         self.current_player = @authentication.player
        redirect_to root_path, notice: "SIGNED IN"
       else
        render :new
      end
    end
  end

  def destroy
    session[:player_id] = nil
    session[:omniauth] = nil
    redirect_to root_path, notice: "Signed Out"
  end

end
