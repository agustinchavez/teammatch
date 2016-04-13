class SessionsController < ApplicationController

  def new
  end

  def create
    auth = request.env['omniauth.auth']
    player = Player.find_or_create_by(provider: auth[:provider], uid: auth[:uid])
    player.username = auth[:info][:name]
    player.email = auth[:info][:email]
    if player.new_record?
      player.password = SecureRandom.uuid()
      player.phone = '122345689'
      player.save!
    end
    redirect_to root_path
  end

 def destroy
    session.clear
    redirect_to root_path, notice: "Signed Out"
  end

end
