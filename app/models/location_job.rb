class LocationJob < ApplicationRecord
  validates_inclusion_of :completed, in: [true, false]
  belongs_to :location
  belongs_to :job
end
