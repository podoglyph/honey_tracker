require 'faker'

FactoryGirl.define do
  factory :harvest do
    name {Faker::Superhero.name}
    start_date {Faker::Date.between(4.years.ago, 10.days.ago)}
    end_date {Faker::Date.forward(365)}

    factory :harvest_with_locations do
      after(:create) do |harvest|
        location1, location2, location3 = create_list(:location, 3)

        harvest.harvest_locations.create(name: location1.name, completed: true)
        harvest.harvest_locations.create(name: location2.name)
        harvest.harvest_locations.create(name: location3.name)
      end
    end

  end
end
