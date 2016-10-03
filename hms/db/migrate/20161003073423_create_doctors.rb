class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :phone_no
      t.string :email
      t.string :speciality
      t.integer :experience
      t.string :education

      t.timestamps
    end
  end
end
