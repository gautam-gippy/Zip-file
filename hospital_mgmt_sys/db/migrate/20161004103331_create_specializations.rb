class CreateSpecializations < ActiveRecord::Migration[5.0]
  def change
    create_table :specializations do |t|
      t.string :specialization
      t.text :desc
      t.integer :level

      t.timestamps
    end
  end
end
