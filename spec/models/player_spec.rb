require 'rails_helper'

RSpec.describe Player do
  context 'is a model and has attributes' do

    it "is a valid model" do
      expect(Player.new).to be_a(Player)
    end

    it 'has a username attribute' do
     expect(Player.new).to respond_to(:username)
   end

    it 'has a email attribute' do
     expect(Player.new).to respond_to(:email)
   end

   it 'has a password digest attribute' do
     expect(Player.new).to respond_to(:password_digest)
   end

   it 'has a address attribute' do
     expect(Player.new).to respond_to(:address)
   end

   it 'has a city attribute' do
     expect(Player.new).to respond_to(:city)
   end

   it 'has a state attribute' do
     expect(Player.new).to respond_to(:state)
   end

   it 'has a zip attribute' do
     expect(Player.new).to respond_to(:zip)
   end

    it 'has a phone attribute' do
     expect(Player.new).to respond_to(:phone)
   end

    it 'has a info attribute' do
     expect(Player.new).to respond_to(:info)
   end

  end

end