class Player < ActiveRecord::Base
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password_digest, :phone, presence: true

  has_many :player_sports
  has_many :player_positions
  has_many :player_teams
  has_many :positions, through: :player_positions
  has_many :sports, through: :player_sportss
  has_many :teams, through: :payer_teams
  has_many :media, as: :showable

  # def self.sign_in_from_omniauth(auth)
  #   find_by(provider: auth['provider'], uid: auth["uid"]) || create_user_from_omniauth(auth)
  # end



end
