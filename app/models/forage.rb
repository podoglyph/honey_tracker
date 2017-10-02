class Forage < ApplicationRecord
  has_many :location_forages
  has_many :locations, through: :location_forages
end
