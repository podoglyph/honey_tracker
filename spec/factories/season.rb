require 'faker'

FactoryGirl.define do
  factory :season do
    name {FAKER::NAME.name}
    year {Time.now}
  end
end
