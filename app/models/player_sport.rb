class PlayerSport < ActiveRecord::Base
  validates :player_id, :sport_id, presence: true

   belongs_to :player
   belongs_to :sport
end
