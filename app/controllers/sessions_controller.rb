class SessionsController < ApplicationController

  def new
  end

  def create
    # auth = request.env['omniauth.auth']
    # player = Player.find_or_create_by(provider: auth[:provider], uid: auth[:uid])
    # player.username = auth[:info][:name]
    # if player.new_record?
    #   player.password = SecureRandom.uuid()
    #   player.phone = '123345689'
    #   player.save!
    # end
    # session[:player_id] = player.id
    # if player.positions == []
    #    redirect_to welcome_edit_path
    #  else
    #    redirect_to root_path
    #  end
  end

 def destroy
    session.clear
    redirect_to root_path, notice: "Signed Out"
  end

end
