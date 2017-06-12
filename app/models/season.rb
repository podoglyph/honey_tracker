class Season < ApplicationRecord
  validates :name, :year, presence: true
  has_many :season_locations
  has_many :locations, through: :season_locations
end
