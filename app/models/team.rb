class Team < ActiveRecord::Base
  acts_as_mappable :lat_column_name => :latitude,
                    :lng_column_name => :longitude

  before_save :set_lat_long

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

  def set_lat_long
    admin = Player.find(self.admin_id)
    self.update(latitude: admin.latitude, longitude: admin.longitude)
  end

  def map_string
     admin = Player.find(self.admin_id)
     "&markers=color:red%7Clabel:" + "#{admin.username.first}" +"%7C" + "#{admin.latitude.to_f.to_s}," + "#{admin.longitude.to_f.to_s}"
  end

end
