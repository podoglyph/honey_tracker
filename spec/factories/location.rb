require 'faker'

FactoryGirl.define do
  factory :location do
    name {Faker::LordOfTheRings.location}
    lat 46.444344
    long -101.404440
  end
end
