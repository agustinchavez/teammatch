require 'rails_helper'

describe TeamsController do

  let(:team) {FactoryGirl.create(:team)}
  let(:teams) {array = []; 5.times{array << FactoryGirl.create(:team)}; array}
  let(:player) {FactoryGirl.create(:player)}

  before(:each) do
    stub_current_player(player)
  end

  context "#index" do

    it 'is successful' do
      get :index
      expect(response).to be_success
    end

    it 'returns an array of teams' do
      get :index
      expect(teams).to be_an(Array)
    end

    it 'renders index view' do
      get :index
      expect(response).to render_template("index")
    end

  end

  context "#show" do

    it 'is successful' do
      get :show, id: team.id
      expect(response).to be_success
    end

    it 'returns a team' do
      get :show, id: team.id
      expect(team).to be_a(Team)
    end

    it 'renders show view' do
      get :show, id: team.id
      expect(response).to render_template("show")
    end

  end

  context "#new" do

    it 'is successful' do
      get :new
      expect(response).to be_success
    end

    it 'creates a new team' do
      get :new
      expect(team).to be_a(Team)
    end

    it 'renders new view' do
       get :new
       expect(response).to render_template("new")
     end

  end

  context "#create" do

    it 'creates a team' do
      team_params = {team: {team_name: "Chivas", info: "Champions of the world", admin_id: 1}}
      post :create, team_params
      created_team = Team.find_by(team_name: "Chivas")
      expect(response).to redirect_to(team_path(created_team))
    end

     xit 'redirects to home page when user logs in' do
      player_hash = {username: @player.username, email: @player.email, password: @player.password}
      post :create, player_hash
      expect(response).to redirect_to(root_path)
    end

    xit 'does not log in an invalid user' do
      player_hash = {username: @player.username, email: @player.email, password: "incorrect"}
      post :create, player_hash
      expect(session[:player_id]).to eq nil
    end

    xit 'redirects to login path when authentication fails' do
      player_hash = {username: @player.username, email: @player.email, password: "incorrect"}
      post :create, player_hash
      expect(response).to redirect_to(login_path)
    end

  end

  context "#destroy" do

    xit 'logs out the user' do
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

  context "#search" do
    xit 'finds all of the teams by sport' do
    end

     xit 'finds all of the teams by distance' do
     end

   end
end