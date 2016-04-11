FactoryGirl.define do
  factory :team do
    name { Faker::Book.title }
    info { Faker::Hacker.say_something_smart }
    admin_id {(FactoryGirl.create(:player)).id}
  end
end