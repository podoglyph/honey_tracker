class Job < ApplicationRecord
  belongs_to :location
  validates :title, :start_date, presence: true
  validates_inclusion_of :completed, in: [true, false]
end
