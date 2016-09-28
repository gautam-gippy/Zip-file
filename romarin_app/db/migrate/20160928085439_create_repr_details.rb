class CreateReprDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :repr_details do |t|
      t.string :name
      t.string :address
      t.string :country

      t.timestamps
    end
  end
end
