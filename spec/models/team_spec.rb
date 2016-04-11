require 'rails_helper'

RSpec.describe Team do
  context 'is a model and has attributes' do

    it "exists" do
      expect(Team.new).to be_a(Team)
    end

    it 'has a name attribute' do
     expect(Team.new).to respond_to(:team_name)
   end

    it 'has a info attribute' do
     expect(Team.new).to respond_to(:info)
   end

    it 'has an admin id' do
     expect(Team.new).to respond_to(:admin_id)
   end

  end

  context 'has correct validations and associations' do

    it { should validate_presence_of(:team_name) }

    it { should validate_presence_of(:admin_id) }

    it { should belong_to(:admin) }

    it { should have_many(:media) }

    it { should have_many(:players) }

    it { should have_many(:sports) }
  end

end