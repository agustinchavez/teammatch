require 'rails_helper'

describe PositionsController do

  let(:position) {Position.new}

  it 'It creates a new Position instance' do
    get :new
    expect(response).to be_success
  end

end