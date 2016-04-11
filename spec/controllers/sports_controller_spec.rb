require 'rails_helper'

describe SportsController do

  before(:each) do
    player = FactoryGirl.create(:player)
    stub_current_player(player)
    @sport = FactoryGirl.create(:sport)
  end

  context '#new' do

    it 'is successful' do
      get :new
      expect(response).to be_success
    end

    it 'creates a new sport' do
      get :new
      expect(@sport).to be_a_kind_of(Sport)
    end
  end

  context '#create' do
    it 'creates a sport if params are valid ' do
      expect {
        post :create, sport: FactoryGirl.attributes_for(:sport)}.to change(Sport, :count).by(1)
    end
  end

end