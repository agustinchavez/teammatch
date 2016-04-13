class Sport < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :team_sports
  has_many :teams, through: :team_sports
  has_many :player_sports
  has_many :players, through: :player_sports
end
