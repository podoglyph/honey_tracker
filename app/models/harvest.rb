class Harvest < ApplicationRecord
  validates :name, :start_date, presence: true
  validates_inclusion_of :completed, in: [true, false]
end
