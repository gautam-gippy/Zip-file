class CreateMarks < ActiveRecord::Migration[5.0]
  def change
    create_table :marks do |t|
      t.string :i_reg_no
      t.integer :original_language
      t.boolean :billing
      t.string :i_reg_date
      t.string :exp_date

      t.timestamps
    end
  end
end
