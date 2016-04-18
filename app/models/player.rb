class Player < ActiveRecord::Base
  has_secure_password
  acts_as_mappable :lat_column_name => :latitude,
                   :lng_column_name => :longitude

  before_save :lat_long

  validates :username, presence: true

  has_many :player_sports
  has_many :player_positions
  has_many :player_teams
  has_many :positions, through: :player_positions
  has_many :sports, through: :player_sports
  has_many :teams, through: :payer_teams
  has_many :media, as: :showable


  def self.validate_via_provider(auth)
    @player = Player.find_by(provider: auth[:provider], uid: auth[:uid])
    @player = Player.new(provider: auth[:provider], uid: auth[:uid]) unless @player
    @player.username = auth[:info][:name]
    if @player.new_record?
      @player.password = SecureRandom.uuid()
      @player.phone = '122345689'
      @player.save
    end
      @player
  end

  def has_positions?
    self.positions.any?
  end

   private

  def parse_address
    address = self.address
    city = self.city
    state = self.state
    zip = self.zip
    address = "#{address} #{city} #{state} #{zip}"
  end

  def lat_long
    # OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
    addr = URI.escape(parse_address)
    res = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{addr}&key=AIzaSyC7dmZEFn1tJOy7zeVH2Hce3tF8U0_MnIg")
    lat =  res["results"][0]["geometry"]["location"]["lat"]
    lng =  res["results"][0]["geometry"]["location"]["lng"]
    self.latitude = lat
    self.longitude = lng
  end

end
