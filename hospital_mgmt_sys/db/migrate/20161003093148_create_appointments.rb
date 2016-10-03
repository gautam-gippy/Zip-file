class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.string :patient_name
      t.string :doctor_name

      t.timestamps
    end
  end
end
