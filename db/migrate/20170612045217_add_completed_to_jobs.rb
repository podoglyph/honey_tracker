class AddCompletedToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :completed, :boolean, default: false
  end
end
