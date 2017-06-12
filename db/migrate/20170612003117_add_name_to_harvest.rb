class AddNameToHarvest < ActiveRecord::Migration[5.1]
  def change
    add_column :harvests, :name, :string
  end
end
