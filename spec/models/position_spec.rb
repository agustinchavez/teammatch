require 'rails_helper'

RSpec.describe Poition do
  context 'is a model and has attributes' do

    it "is a valid model" do
      expect(Poition.new).to be_a(Poition)
    end

    it 'has a name attribute' do
     expect(Poition.new).to respond_to(:name)
   end

  end

  context 'has correct validations and associations' do

    it { should validate_presence_of(:name) }

    it { should have_many(:players) }

  end

end