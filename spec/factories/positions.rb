FactoryGirl.define do
  factory :position do
    name { Faker::Team.creature }
  end
end