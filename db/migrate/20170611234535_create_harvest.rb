class CreateHarvest < ActiveRecord::Migration[5.1]
  def change
    create_table :harvests do |t|
      t.date :start_date
      t.date :end_date
      t.boolean :completed, default: false
    end
  end
end
