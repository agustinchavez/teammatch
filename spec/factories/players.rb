FactoryGirl.define do
   factory :user do
     username { Faker::Internet.user_name}
     email { Faker::Internet.email }
     password {Faker::Internet.password }
     phone_number {Faker::PhoneNumber.phone_number}
   end
 end