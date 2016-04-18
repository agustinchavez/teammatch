class Player < ActiveRecord::Base
  has_secure_password

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

end
