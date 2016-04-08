# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
agustin = Player.create(username: "agustin", password: "password", email: "agustin@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone_number: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

carla = Player.create(username: "carla", password: "password", email: "carla@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone_number: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

natalie = Player.create(username: "natalie", password: "password", email: "natalie@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone_number: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

ana = Player.create(username: "ana", password: "password", email: "ana@gmail.com", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip, phone_number: Faker::PhoneNumber.phone_number, info: Faker::Lorem.paragraph(1))

players = [ana, natalie, carla, agustin]

cobra_kai = Team.create(team_name: "Cobra Kai fc", info: Faker::Lorem.paragraph(1), admin_id: players.sample.id)

cobra_kai.players << agustin
cobra_kai.players << natalie
cobra_kai.players << ana

players.each do |player|
  player.positions.create(name: Faker::Team.creature)
  player.sports.create(name: Faker::Book.title)
  player.media.create(content: Faker::Lorem.paragraph(1), link: Faker::Internet.url)
end

cobra_kai.media.create(content: Faker::Lorem.paragraph(1), link: Faker::Internet.url)