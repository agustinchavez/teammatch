class SessionsController < ApplicationController

  def new
  end

  def create
    ap request.env['omniauth.auth']
    auth = request.env['omniauth.auth']
    player = Player.find_or_create_by(provider: auth[:provider], uid: auth[:uid])
    player.username = auth[:info][:name]
    if player.new_record?
      player.password = SecureRandom.uuid()
      player.save!
    end
    session[:player_id] = player.id
    redirect_to root_path
  end

 def destroy
    session.clear
    redirect_to root_path, notice: "Signed Out"
  end

end
