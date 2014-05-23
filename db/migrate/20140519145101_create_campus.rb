class CreateCampus < ActiveRecord::Migration
  def change
    create_table :campuses do |t|
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end
