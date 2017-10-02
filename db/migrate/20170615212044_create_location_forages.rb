class CreateLocationForages < ActiveRecord::Migration[5.1]
  def change
    create_table :location_forages do |t|
      t.references :location, foreign_key: true
      t.references :forage, foreign_key: true
    end
  end
end
