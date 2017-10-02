class Location < ApplicationRecord
  validates :name, :lat, :long, presence: true
  has_many :season_locations
  has_many :seasons, through: :season_locations
  has_many :location_jobs
  has_many :jobs, through: :location_jobs
  has_many :location_forages
  has_many :forages, through: :location_forages
end
