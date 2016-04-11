require 'rails_helper'

RSpec.describe Sport do
  context 'is a model and has attributes' do

    it "is a valid model" do
      expect(Sport.new).to be_a(Sport)
    end

    it 'has a name attribute' do
     expect(Sport.new).to respond_to(:name)
   end

  end

  context 'has correct validations and associations' do

    it { should validate_presence_of(:name) }

    it { should have_many(:teams) }

    it { should have_many(:players) }

  end

end