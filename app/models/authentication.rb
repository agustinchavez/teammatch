class Authentication < ActiveRecord::Base

  belongs_to :player

  def self.find_or_create_with_omniauth(auth)
    player = Authentication.find_or_create_by(uid: auth['uid'], provider: auth['provider'])
    player.update(name: auth[:info][:name], token: auth.credentials.token, secret: auth.credentials.secret)
  end

  # def self.create_with_omniauth(auth)
    # create(uid: auth['uid'], provider: auth['provider'])
  # end

end
