class AddColumnDescToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :desc, :text
  end
end
