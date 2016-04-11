require 'rails_helper'

describe SportsController do

  let(:sport) { FactoryGirl.create(:sport) }

  context '#new' do

    it 'is successful' do
      get :new
      expect(response).to be_success
    end

    it 'creates a new sport' do
      get :new
      expect(sport).to be_a_kind_of(Sport)
    end
  end

  context '#create' do
    it 'creates an sport if params are valid ' do
      expect {
        post :create, sport: FactoryGirl.attributes_for(:sport)}.to change(Position, :count).by(1)
    end
  end

end