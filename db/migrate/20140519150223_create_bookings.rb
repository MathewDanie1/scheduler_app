class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :classroom
      t.references :cohort
      t.date :start_date
      t.date :end_date
      t.references :producer

      t.timestamps
    end
    add_index :bookings, :classroom_id
    add_index :bookings, :cohort_id
    add_index :bookings, :producer_id
  end
end
