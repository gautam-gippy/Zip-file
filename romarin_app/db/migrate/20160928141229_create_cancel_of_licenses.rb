class CreateCancelOfLicenses < ActiveRecord::Migration[5.0]
  def change
    create_table :cancel_of_licenses do |t|
      t.string :gaz_no
      t.string :int_off
      t.string :not_date
      t.string :o_gaz_no
      t.string :o_pub_date
      t.string :pub_date
      t.string :eff_reg_date
      t.string :rec_reg_date

      t.timestamps
    end
  end
end
