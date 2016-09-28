class AddColumnOocdToMarks < ActiveRecord::Migration[5.0]
  def change
  	add_column :marks, :oocd, :string
  end
end
