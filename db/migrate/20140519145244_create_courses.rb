class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.references :program
      t.references :campus

      t.timestamps
    end
    add_index :courses, :program_id
    add_index :courses, :campus_id
  end
end
