require 'faker'

FactoryGirl.define do
  factory :location do
    name {Faker::LordOfTheRings.location}
    lat 46.444344
    long -101.404440

    factory :location_with_jobs do
      after(:create) do |location|
        location.jobs.create(title: "mite treatment", start_date: Date.new)
        location.jobs.create(title: "pulling honey", start_date: Date.new)
        location.jobs.create(title: "mite treatment", start_date: Date.new)
      end
    end
  end
end
