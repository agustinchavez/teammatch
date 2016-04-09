require 'rails_helper'

describe SessionsController do

  before(:each) do
    session.clear
    @player = FactoryGirl.create(:player)
  end

  context "#new" do

    it 'is successful' do
      get :new
      expect(response).to be_success
    end

    it 'creates a new player' do
      get :new
      expect(@player).to be_a_kind_of(Player)
    end

  end

  context "#create" do

    it 'logs in a player' do
      player_hash = {username: @player.username, email: @player.email, password: @player.password}
      post :create, player_hash
      expect(session[:player_id]).to eq @player.id
    end

     it 'redirects to path when player logs in' do
      player_hash = {username: @player.username, email: @player.email, password: @player.password}
      post :create, player_hash
      expect(response).to redirect_to(questions_path)
    end

    it 'does not log in an invalid player' do
      player_hash = {username: @player.username, email: @player.email, password: "incorrect"}
      post :create, player_hash
      expect(session[:player_id]).to eq nil
    end

    it 'redirects to login path when authentication fails' do
      player_hash = {username: @player.username, email: @player.email, password: "incorrect"}
      post :create, player_hash
      expect(response).to redirect_to(login_path)
    end

  end

  context "#destroy" do

    it 'logs the player out' do
      player_hash = {username: @player.username, email: @player.email, password: @player.password}
      post :create, player_hash
      get :destroy
      expect(session[:player_id]).to eq nil
    end

    it 'redirects to the questions' do
      player_hash = {username: @player.username, email: @player.email, password: @player.password}
      post :create, player_hash
      get :destroy
      expect(response).to redirect_to(questions_path)
    end

  end
end