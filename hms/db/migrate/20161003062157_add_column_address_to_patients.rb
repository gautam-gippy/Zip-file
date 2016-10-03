class AddColumnAddressToPatients < ActiveRecord::Migration[5.0]
  def change
    add_column :patients, :address, :string
  end
end
