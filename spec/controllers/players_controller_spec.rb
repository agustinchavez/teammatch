require 'rails_helper'

describe PlayersController do

  before(:each) do
    @new_player = FactoryGirl.create(:player)
  end

  context "#new" do

    it 'is successful' do
      get :new
      expect(response).to be_success
    end

    it 'creates a new instance of the Player class' do
      get :new
      expect(assigns(:player)).to be_a_kind_of(Player)
    end

  end

  context "#create" do

    it "creates a player when params are valid" do
      expect {
      post :create, player: FactoryGirl.attributes_for(:player)}.to change(Player, :count).by(1)
    end

    it "redirects to login path when player is created" do
      post :create, player: FactoryGirl.attributes_for(:player)
      expect(response).to redirect_to questions_path
    end

  end

end