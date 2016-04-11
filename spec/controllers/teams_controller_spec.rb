require 'rails_helper'

describe TeamsController do

  before(:each) do
    @team = FactoryGirl.create(:team)
  end

  context "#new" do

    it 'is successful' do
      get :new
      expect(response).to be_success
    end

    xit 'creates a new player' do
      get :new
      expect(@player).to be_a_kind_of(Player)
    end

  end

  context "#create" do

    xit 'logs in a player' do
      player_hash = {username: @player.username, email: @player.email, password: @player.password}
      post :create, player_hash
      expect(session[:player_id]).to eq @player.id
    end

     xit 'When player logs in, it redirects to homepage' do
      player_hash = {username: @player.username, email: @player.email, password: @player.password}
      post :create, player_hash
      expect(response).to redirect_to(root_path)
    end

    xit 'does not log in an invalid player' do
      player_hash = {username: @player.username, email: @player.email, password: "incorrect"}
      post :create, player_hash
      expect(session[:player_id]).to eq nil
    end

    xit 'When authentication fails, it redirects to login path' do
      player_hash = {username: @player.username, email: @player.email, password: "incorrect"}
      post :create, player_hash
      expect(response).to redirect_to(login_path)
    end

  end

  context "#destroy" do

    xit 'logs out the player' do
      player_hash = {username: @player.username, email: @player.email, password: @player.password}
      post :create, player_hash
      get :destroy
      expect(session[:player_id]).to eq nil
    end

    xit 'redirects to the home page' do
      player_hash = {username: @player.username, email: @player.email, password: @player.password}
      post :create, player_hash
      get :destroy
      expect(response).to redirect_to(root_path)
    end

  end
end