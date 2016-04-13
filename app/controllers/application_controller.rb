class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_player
    @player ||= Player.find_by(id: session[:player_id]) if session[:player_id]
  end

  def current_player=(player)
     @current_player = player
     session[:player_id] = user.nil? ? nil : user.id
   end

  def logged_in?
     !!current_player
   end

  helper_method :current_player, :logged_in?

end
