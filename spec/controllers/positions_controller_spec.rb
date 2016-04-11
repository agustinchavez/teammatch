require 'rails_helper'

describe PositionsController do

  let(:position) {Position.new}

  it 'is successful' do
    get :new
    expect(response).to be_success
  end

  it 'creates a new position' do
     get :new
     expect(@position).to be_a_kind_of(Position)
   end

end