class AddColumnAdminToPatients < ActiveRecord::Migration[5.0]
  def change
    add_column :patients, :admin, :boolean
  end
end
