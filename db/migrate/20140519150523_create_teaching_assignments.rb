class CreateTeachingAssignments < ActiveRecord::Migration
  def change
    create_table :teaching_assignments do |t|
      t.references :cohort
      t.references :instructor
      t.integer :rate

      t.timestamps
    end
    add_index :teaching_assignments, :cohort_id
    add_index :teaching_assignments, :instructor_id
  end
end
