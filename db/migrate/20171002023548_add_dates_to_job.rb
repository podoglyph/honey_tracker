class AddDatesToJob < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :start_date, :date
    add_column :jobs, :end_date, :date
  end
end
