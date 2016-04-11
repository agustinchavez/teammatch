require 'rails_helper'

describe PositionsController do

before(:each) do
    player = FactoryGirl.create(:player)
    stub_current_player(player)
    @position = FactoryGirl.create(:position)
  end

  it 'is successful' do
    get :new
    expect(response).to be_success
  end

  it 'creates a new position' do
     get :new
     expect(@position).to be_a_kind_of(Position)
   end

  end

end