class CreatePartialCeasingEffects < ActiveRecord::Migration[5.0]
  def change
    create_table :partial_ceasing_effects do |t|
      t.string :doc_id
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
