class Player < ActiveRecord::Base
  has_secure_password

  validates :username, presence: true, uniqueness: true
  # validates :password_digest, :phone, presence: true

  has_many :player_sports
  has_many :player_positions
  has_many :player_teams
  has_many :positions, through: :player_positions
  has_many :sports, through: :player_sports
  has_many :teams, through: :payer_teams
  has_many :media, as: :showable

  has_many :authentications

  def self.create_with_omniauth(auth)
     create(username: auth[:info][:name])
   end

end
