class PlayerPosition < ActiveRecord::Base
  validates :player_id, :position_id, presence: true

   belongs_to :player
   belongs_to :position
end
