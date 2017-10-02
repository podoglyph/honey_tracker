class Job < ApplicationRecord
  has_many :location_jobs
  has_many :locations, through: :location_jobs
  validates :job_name, presence: true
end
