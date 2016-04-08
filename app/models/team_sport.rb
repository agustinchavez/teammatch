class TeamSport < ActiveRecord::Base
  validates :team_id, :sport_id, presence: true
   belongs_to :team
   belongs_to :sport
end
