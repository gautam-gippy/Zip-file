class CreateExpertizes < ActiveRecord::Migration[5.0]
  def change
    create_table :expertizes do |t|
      t.integer :doctor_id
      t.integer :spl_id

      t.timestamps
    end
  end
end
