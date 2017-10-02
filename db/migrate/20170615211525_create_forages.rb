class CreateForages < ActiveRecord::Migration[5.1]
  def change
    create_table :forages do |t|
      t.string :forage_type
    end
  end
end
