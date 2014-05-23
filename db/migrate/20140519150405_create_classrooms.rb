class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :name
      t.references :campus
      t.integer :capacity

      t.timestamps
    end
    add_index :classrooms, :campus_id
  end
end
