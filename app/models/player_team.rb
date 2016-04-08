class PlayerTeam < ActiveRecord::Base
  validates :player_id, :team_id, presence: true

   belongs_to :player
   belongs_to :team
end
