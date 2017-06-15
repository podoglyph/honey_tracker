class AddColumnsToSeasonLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :season_locations, :num_hives, :integer
    add_column :season_locations, :num_supers, :integer
    add_column :season_locations, :num_dead, :integer
  end
end
