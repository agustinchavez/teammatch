FactoryGirl.define do
  factory :position do
    username { Faker::Team.creature }
  end
end