require 'rails_helper'

RSpec.describe Team do
  it "exists" do
     expect(Team.new).to be_a(Team)
   end
end
