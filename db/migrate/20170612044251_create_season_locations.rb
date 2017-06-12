class CreateSeasonLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :season_locations do |t|
      t.references :season, foreign_key: true
      t.references :location, foreign_key: true
    end
  end
end
