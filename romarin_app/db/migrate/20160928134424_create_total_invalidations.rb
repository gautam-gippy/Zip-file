class CreateTotalInvalidations < ActiveRecord::Migration[5.0]
  def change
    create_table :total_invalidations do |t|
      t.string :rec_reg_date
      t.string :not_date
      t.string :eff_reg_date
      t.string :gaz_no
      t.string :pub_date
      t.string :int_office

      t.timestamps
    end
  end
end
