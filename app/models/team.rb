class Team < ActiveRecord::Base
  has_many :media, as: :showable
  has_many :player_teams
  has_many :players, through: :player_teams
  belongs_to :admin, class_name: "Player"
  has_many :team_sports
  has_many :sports, through: :team_sports
  validates :team_name, :admin_id, presence: true

  def has_media?
     self.media.any?
  end

end
