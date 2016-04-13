# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
pele = Player.create(username: "pele", password: "password", email: "pele@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

mia = Player.create(username: "Mia Hamm", password: "password", email: "hamm@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

jennie = Player.create(username: "Jennie Finch", password: "password", email: "Finch@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

jonah = Player.create(username: "jonah lomu", password: "password", email: "lomu@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

karim = Player.create(username: "Karim Abdul Jabba", password: "password", email: "karim@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

cristiano = Player.create(username: "Cristiano Ronaldo", password: "password", email: "cristiano_ronaldo@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

lionel = Player.create(username: "Lionel Messi", password: "password", email: "lionel_messi@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

javier = Player.create(username: "Javier Hernandez", password: "password", email: "chicharito@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

omar = Player.create(username: "Omar Bravo", password: "password", email: "bravo@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

fernando = Player.create(username: "Fernando Valenzuela", password: "password", email: "valenzuela@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

ramon = Player.create(username: "Ramon Morales", password: "password", email: "ramoncito@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

oswaldo = Player.create(username: "Oswaldo Sanchez", password: "password", email: "oswaldo@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

wayne = Player.create(username: "Wayne Rooney", password: "password", email: "rooney@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

rio = Player.create(username: "Rio Ferdinand", password: "password", email: "rio@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

ray = Player.create(username: "Ray Lewis", password: "password", email: "lewis@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

david = Player.create(username: "David Beckham", password: "password", email: "Beckham@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

zizou = Player.create(username: "zinadine zidane", password: "password", email: "zizou@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

larry = Player.create(username: "Larry Bird", password: "password", email: "bird@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

babe = Player.create(username: "Babe Ruth", password: "password", email: "ruth@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

joe = Player.create(username: "Joe Montana", password: "password", email: "montana@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

michael = Player.create(username: "Michael Jordan", password: "password", email: "jordan@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

magic = Player.create(username: "Irving Johnson", password: "password", email: "magic@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

sammy = Player.create(username: "Sammy Sosa", password: "password", email: "sammy@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

derek = Player.create(username: "Derek Jeter", password: "password", email: "jeter@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

lou = Player.create(username: "Lou Gehrig", password: "password", email: "lou@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

jackie = Player.create(username: "Jackie Robinson", password: "password", email: "jackie@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))


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
  s.sports.create(name: "Soccer")
end

basketballers.each do |b|
  b.sports.create(name: "Basketball")
end

baseballers.each do |b|
  b.sports.create(name: "Baseball")
end

softballers.each do |s|
  s.sports.create(name: "Softball")
end

rugby_players.each do |r|
  r.sports.create(name: "Rugby")
end

football_player.each do |f|
  f.sports.create(name: "Football")
end

forwards.each do |f|
  f.positions.create(name: "Forward")
end

midfielders.each do |m|
  m.positions.create(name: "Midfielder")
end

defenders.each do |d|
  d.positions.create(name: "Defender")
end

goalkeepers.each do |k|
  k.positions.create(name: "Goalkeeper")
end

shooting_guards.each do |s|
  s.positions.create(name: "Shooting Guard")
end

point_guards.each do |p|
  p.positions.create(name: "Point Guard")
end

quarterbacks.each do |q|
  q.positions.create(name: "Quarterback")
end

linebackers.each do |s|
  s.positions.create(name: "Linebacker")
end

pichers.each do |s|
  s.positions.create(name: "Pitcher")
end

outfielders.each do |s|
  s.positions.create(name: "Outfielder")
end

short_stops.each do |s|
  s.positions.create(name: "Short Stop")
end

first_bases.each do |s|
  s.positions.create(name: "First Base")
end

second_bases.each do |s|
  s.positions.create(name: "Second Base")
end

left_wingers.each do |s|
  s.positions.create(name: "Left Winger")
end

cobra_kai_fc = Team.create(name: "Cobra Kai Fc", info: Faker::Lorem.paragraph(1), admin_id: javier.id)
chicago_phil_harmonics = Team.create(name: "Chicago Philhamonics", info: Faker::Lorem.paragraph(1), admin_id: michael.id)
south_side_sluggers = Team.create(name: "The South Side Sluggers", info: Faker::Lorem.paragraph(1), admin_id: ray.id)
highway_hurricanes = Team.create(name: "Highway Hurricanes", info: Faker::Lorem.paragraph(1), admin_id: derek.id)
ruby_ruby_ruby_ruby = Team.create(name: "Ruby, et al.", info: Faker::Lorem.paragraph(1), admin_id: jennie.id)
latino_heat = Team.create(name: "Latino Heat", info: Faker::Lorem.paragraph(1), admin_id: mia.id)

sports = %w(soccer basketball baseball softball rugby cricket hockey ultimate_frisbee)
sports.map{|e| e.capitalize }
teams = %w(Winners FireFlys Dreams\ Of\ Glory FlameThrowers Northside\ Geeks Loopers Flowers Sharknados Wolverines Dethroners Dudeloves Mankinds Cactus\ Jacks Anagrams)
positions = %w(third\ base offensive\ lineman defensive\lineman wide\ receiver running\ back safety cornerback full-back half-back flanker lock hooker prop kicker punter)
positions.map{|e| e.capitalize }

cobra_kai_fc.players << javier
cobra_kai_fc.players << cristiano
cobra_kai_fc.players << wayne
cobra_kai_fc.sports.create(name: "Soccer")

chicago_phil_harmonics.players << karim
chicago_phil_harmonics.players << michael
chicago_phil_harmonics.players << magic
chicago_phil_harmonics.sports.create(name: "Basketball")

south_side_sluggers.players << ray
south_side_sluggers.players << joe
south_side_sluggers.sports.create(name: "Football")

highway_hurricanes.players << derek
highway_hurricanes.players << fernando
highway_hurricanes.players << babe
highway_hurricanes.players << sammy
highway_hurricanes.sports.create(name: "Baseball")

ruby_ruby_ruby_ruby.players << jennie
ruby_ruby_ruby_ruby.players << lou
ruby_ruby_ruby_ruby.sports .create(name: "Football")

latino_heat.players << mia
latino_heat.players << pele
latino_heat.players << omar
latino_heat.sports.create(name: "Soccer")




