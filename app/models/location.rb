class Location < ApplicationRecord
  validates :name, :lat, :long, presence: true
  has_many :season_locations
  has_many :seasons, through: :season_locations
  has_many :jobs
end
