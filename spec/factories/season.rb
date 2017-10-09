require 'faker'

FactoryGirl.define do
  factory :season do
    name {["Summer", "Spring", "Fall", "Winter"].sample}
    year {Faker::Number.between(2009, 2017)}

    factory :season_location do
      after(:create) do |season|
        season.locations.create(num_hives: 48, num_supers: 145, num_dead: 0)
        season.locations.create(num_hives: 48, num_supers: 133, num_dead: 1)
        season.locations.create(num_hives: 48, num_supers: 139, num_dead: 3)
      end
    end
  end
end
