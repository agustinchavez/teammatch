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

  it "redirects to root path when position is created" do
      post :create, position: FactoryGirl.attributes_for(:position)
      expect(response).to redirect_to root_path
    end
  end

end