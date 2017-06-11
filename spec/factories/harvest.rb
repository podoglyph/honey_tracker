require 'faker'

FactoryGirl.define do
  factory :harvest do
    start_date
    end_date
    completed 0

    factory :harvest_with_locations do
      after(:create) do |harvest|
        location1, location2, location3 = create_list(:location, 3)

        harvest.harvest_locations.create(name: location1.name, completed: 1)
        harvest.harvest_locations.create(name: location2.name)
        harvest.harvest_locations.create(name: location3.name)
      end
    end

  end
end
