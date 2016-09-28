class CreatePartialRefusals < ActiveRecord::Migration[5.0]
  def change
    create_table :partial_refusals do |t|
      t.string :int_office
      t.string :eff_reg_date
      t.string :rec_reg_date
      t.string :original_language
      t.string :good_and_service_limited_to

      t.timestamps
    end
  end
end
