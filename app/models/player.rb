class Player < ActiveRecord::Base

  validates :username, presence: true

  has_many :player_sports
  has_many :player_positions
  has_many :player_teams
  has_many :positions, through: :player_positions
  has_many :sports, through: :player_sports
  has_many :teams, through: :payer_teams
  has_many :media, as: :showable


  def self.create_with_omniauth(auth)
     create(username: auth[:info][:name])
   end

end
