class CreateLocationJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :location_jobs do |t|
      t.references :location, foreign_key: true
      t.references :job, foreign_key: true
      t.boolean :completed, default: false
    end
  end
end
