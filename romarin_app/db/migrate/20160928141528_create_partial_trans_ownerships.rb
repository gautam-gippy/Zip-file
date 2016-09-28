class CreatePartialTransOwnerships < ActiveRecord::Migration[5.0]
  def change
    create_table :partial_trans_ownerships do |t|
      t.string :all_goods_ser_indi
      t.string :all_off_indi
      t.string :gaz_no
      t.string :int_office
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
