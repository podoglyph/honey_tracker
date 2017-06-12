class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.references :location
      t.references :user
    end
  end
end
