class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :role
      t.string :email
      t.string :phone
      t.text :bio
      t.string :password_digest

      t.timestamps
    end
  end
end
