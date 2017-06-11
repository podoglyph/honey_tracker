require 'faker'

FactoryGirl.define do
  factory :location do
    name {Faker::Name.name.split[1]}
    lat 46.444344
    long -101.404440
  end
end
