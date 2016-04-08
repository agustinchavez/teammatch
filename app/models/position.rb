class Position < ActiveRecord::Base
  validates :name, presence: true

  has_many :player_positions
  has_many :players, through: :player_positions
end
