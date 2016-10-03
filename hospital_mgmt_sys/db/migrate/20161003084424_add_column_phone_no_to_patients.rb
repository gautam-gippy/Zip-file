class AddColumnPhoneNoToPatients < ActiveRecord::Migration[5.0]
  def change
    add_column :patients, :phone_no, :string
  end
end
