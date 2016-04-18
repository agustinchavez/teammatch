# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
pele = Player.create(username: "pele", password: "password", email: "pele@gmail.com", address: "300 W. Adams Street", city: "Chicago", state: "IL", zip:  60606, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

mia = Player.create(username: "Mia Hamm", password: "password", email: "hamm@gmail.com", address: "333 N. Michigan Avenue", city: "Chicago", state: "IL", zip: 60601, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

jennie = Player.create(username: "Jennie Finch", password: "password", email: "Finch@gmail.com", address: "35 E. Wacker Drive", city: "Chicago", state: "IL", zip: 60601, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

jonah = Player.create(username: "jonah lomu", password: "password", email: "lomu@gmail.com", address: "3600 N. Halsted Street", city: "Chicago", state: "IL", zip: 60613, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

karim = Player.create(username: "Karim Abdul Jabba", password: "password", email: "karim@gmail.com", address: "6901 S. Oglesby Avenue", city: "Chicago", state: "IL", zip: 60649, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

cristiano = Player.create(username: "Cristiano Ronaldo", password: "password", email: "cristiano_ronaldo@gmail.com", address: "880 N. Lake Shore Drive", city: "Chicago", state: "IL", zip: 60611, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

lionel = Player.create(username: "Lionel Messi", password: "password", email: "lionel_messi@gmail.com", address: "4605 N. Hermitage Avenue", city: "Chicago", state: "IL", zip: 60640, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

javier = Player.create(username: "Javier Hernandez", password: "password", email: "chicharito@gmail.com", address: "9326 S. Pleasant Avenue", city: "Chicago", state: "IL", zip: 60643, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

omar = Player.create(username: "Omar Bravo", password: "password", email: "bravo@gmail.com", address: "4550 N. Hermitage Avenue", city: "Chicago", state: "IL", zip: 60640, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

fernando = Player.create(username: "Fernando Valenzuela", password: "password", email: "valenzuela@gmail.com", address: "701 N. Michigan Avenue", city: "Chicago", state: "IL", zip: 60611, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

ramon = Player.create(username: "Ramon Morales", password: "password", email: "ramoncito@gmail.com", address: "3800 N Alta Vista Terrace", city: "Chicago", state: "IL", zip: 60613, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

oswaldo = Player.create(username: "Oswaldo Sanchez", password: "password", email: "oswaldo@gmail.com", address: "850 E. 58th Street", city: "Chicago", state: "IL", zip: 60637, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

wayne = Player.create(username: "Wayne Rooney", password: "password", email: "rooney@gmail.com", address: "10541 S. Hoyne Avenue", city: "Chicago", state: "IL", zip: 60643, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

rio = Player.create(username: "Rio Ferdinand", password: "password", email: "rio@gmail.com", address: "430 S. Michigan Avenue", city: "Chicago", state: "IL", zip: 60605, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

ray = Player.create(username: "Ray Lewis", password: "password", email: "lewis@gmail.com", address: "7415 N. Sheridan Road", city: "Chicago", state: "IL", zip: 60626, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

david = Player.create(username: "David Beckham", password: "password", email: "Beckham@gmail.com", address: "1244 W. Carmen Avenue", city: "Chicago", state: "IL", zip: 60626, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

zizou = Player.create(username: "zinadine zidane", password: "password", email: "zizou@gmail.com", address: "5810 W. Midway Park", city: "Chicago", state: "IL", zip: 60644, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

larry = Player.create(username: "Larry Bird", password: "password", email: "bird@gmail.com", address: "1001 W. Belmont Avenue", city: "Chicago", state: "IL", zip:60657, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

babe = Player.create(username: "Babe Ruth", password: "password", email: "ruth@gmail.com", address: "636 S. Michigan Avenue", city: "Chicago", state: "IL", zip: 60605, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

joe = Player.create(username: "Joe Montana", password: "password", email: "montana@gmail.com", address: "4904 S. Lake Park Avenue", city: "Chicago", state: "IL", zip: 60615, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

michael = Player.create(username: "Michael Jordan", password: "password", email: "jordan@gmail.com", address: "2700 Point Dr", city: "Highland Park", state: "IL", zip: 60035, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

magic = Player.create(username: "Irving Johnson", password: "password", email: "magic@gmail.com", address: "2800 N. Pine Grove Avenue", city: "Chicago", state: "IL", zip: 60657, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

sammy = Player.create(username: "Sammy Sosa", password: "password", email: "sammy@gmail.com", address: "505 N. Lake Shore Dr.", city: "Chicago", state: "IL", zip: 60611, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

derek = Player.create(username: "Derek Jeter", password: "password", email: "jeter@gmail.com", address: "223 W. Jackson Boulevard", city: "Chicago", state: "IL", zip: 60606, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

lou = Player.create(username: "Lou Gehrig", password: "password", email: "lou@gmail.com", address: "5550 N. Kenmore Avenue", city: "Chicago", state: "IL", zip: 60640, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

jackie = Player.create(username: "Jackie Robinson", password: "password", email: "jackie@gmail.com", address: "25 E. Erie Street", city: "Chicago", state: "IL", zip: 60611, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))


soccer = Sport.create(name: "Soccer")
basketball = Sport.create(name: "Basketball")
baseball = Sport.create(name: "Baseball")
softball = Sport.create(name: "Softball")
football = Sport.create(name: "Football")
rugby = Sport.create(name: "Rugby")

forward = Position.create(name: "Forward")
midfielder = Position.create(name: "Midfielder")
defender = Position.create(name: "Defender")
goalkeeper = Position.create(name: "Goalkeeper")
shooting_guard = Position.create(name: "Shooting Guard")
center = Position.create(name: "Center")
point_guard = Position.create(name: "Point Guard")
quarterback = Position.create(name: "Quarterback")
linebacker = Position.create(name: "Linebacker")
pitcher = Position.create(name: "Pitcher")
outfielder = Position.create(name: "Outfielder")
short_stop = Position.create(name: "Short Stop")
first_base = Position.create(name: "First Base")
second_base = Position.create(name: "Second Base")
left_winger = Position.create(name: "Left Winger")

forwards = [cristiano, lionel, wayne, javier, omar, pele, mia, larry]
midfielders = [zizou, david, ramon]
defenders = [rio]
goalkeepers = [oswaldo]
shooting_guards = [michael]
centers = [karim]
point_guards = [magic]
quarterbacks = [joe]
linebackers = [ray]
pitchers = [fernando, babe, jennie]
outfielders = [sammy]
short_stops = [derek]
first_bases  = [lou]
second_bases = [jackie]
left_wingers = [jonah]

soccer_players = [pele, mia, cristiano, javier, omar, david, zizou, ramon, oswaldo, rio]
basketballers = [michael, larry, magic, karim]
baseballers = [fernando, babe, sammy, derek, lou, jackie]
softballers = [jennie]
rugby_players = [jonah]
football_player = [joe, ray]

admins = [javier, michael, derek, ray, mia, jennie]

soccer_players.each do |s|
  s.sports << soccer
end

basketballers.each do |b|
  b.sports << basketball
end

baseballers.each do |b|
  b.sports << baseball
end

softballers.each do |s|
  s.sports << softball
end

rugby_players.each do |r|
  r.sports << rugby
end

football_player.each do |f|
  f.sports << football
end

forwards.each do |f|
  f.positions << forward
end

midfielders.each do |m|
  m.positions << midfielder
end

defenders.each do |d|
  d.positions << defender
end

goalkeepers.each do |k|
  k.positions << goalkeeper
end

shooting_guards.each do |s|
  s.positions << shooting_guard
end

point_guards.each do |p|
  p.positions << point_guard
end

quarterbacks.each do |q|
  q.positions << quarterback
end

linebackers.each do |s|
  s.positions << linebacker
end

pichers.each do |s|
  s.positions << pitcher
end

outfielders.each do |s|
  s.positions << outfielder
end

short_stops.each do |s|
  s.positions << short_stop
end

first_bases.each do |s|
  s.positions << first_base
end

second_bases.each do |s|
  s.positions << second_base
end

left_wingers.each do |s|
  s.positions << left_winger
end

cobra_kai_fc = Team.create(name: "Cobra Kai Fc", info: Faker::Lorem.paragraph(1), admin_id: javier.id)
chicago_phil_harmonics = Team.create(name: "Chicago Philhamonics", info: Faker::Lorem.paragraph(1), admin_id: michael.id)
south_side_sluggers = Team.create(name: "The South Side Sluggers", info: Faker::Lorem.paragraph(1), admin_id: ray.id)
highway_hurricanes = Team.create(name: "Highway Hurricanes", info: Faker::Lorem.paragraph(1), admin_id: derek.id)
ruby_ruby_ruby_ruby = Team.create(name: "Ruby, et al.", info: Faker::Lorem.paragraph(1), admin_id: jennie.id)
latino_heat = Team.create(name: "Latino Heat", info: Faker::Lorem.paragraph(1), admin_id: mia.id)


the_strokes_video1 = strokes.media.create(media_type: "youtube", content: "video", link: "https://www.youtube.com/watch?v=pT68FS3YbQ4")
the_strokes_video2 = strokes.media.create(media_type: "youtube", content: "video", link: "https://www.youtube.com/watch?v=knU9gRUWCno")
the_strokes_image1 = strokes.media.create(media_type: "image", content: "image", link: "https://static-secure.guim.co.uk/sys-images/Arts/Arts_/Pictures/2015/3/23/1427130870373/The-Strokes-009.jpg")
the_strokes_image2 = strokes.media.create(media_type: "image", content: "image", link: "http://images4.fanpop.com/image/photos/23200000/The-Strokes-the-strokes-23203114-500-477.png")
the_strokes_soundcloud1 = strokes.media.create(media_type: "soundcloud", content: "music", link: "https://soundcloud.com/thestrokesofficial/tracks")
the_strokes_soundcloud2 = strokes.media.create(media_type: "soundcloud", content: "music", link: "https://soundcloud.com/thestrokes")



sports = %w(soccer basketball baseball softball rugby cricket hockey ultimate_frisbee)
sports.map{|e| e.capitalize }
teams = %w(Winners FireFlys Dreams\ Of\ Glory FlameThrowers Northside\ Geeks Loopers Flowers Sharknados Wolverines Dethroners Dudeloves Mankinds Cactus\ Jacks Anagrams)
positions = %w(third\ base offensive\ lineman defensive\lineman wide\ receiver running\ back safety cornerback full-back half-back flanker lock hooker prop kicker punter)
positions.map{|e| e.capitalize }

cobra_kai_fc.players << javier
cobra_kai_fc.players << cristiano
cobra_kai_fc.players << wayne
cobra_kai_fc.sports << soccer

chicago_phil_harmonics.players << karim
chicago_phil_harmonics.players << michael
chicago_phil_harmonics.players << magic
chicago_phil_harmonics.sports << basketball

south_side_sluggers.players << ray
south_side_sluggers.players << joe
south_side_sluggers.sports << football

highway_hurricanes.players << derek
highway_hurricanes.players << fernando
highway_hurricanes.players << babe
highway_hurricanes.players << sammy
highway_hurricanes.sports << baseball

ruby_ruby_ruby_ruby.players << jennie
ruby_ruby_ruby_ruby.players << lou
ruby_ruby_ruby_ruby.sports << softball

latino_heat.players << mia
latino_heat.players << pele
latino_heat.players << omar
latino_heat.sports << soccer




