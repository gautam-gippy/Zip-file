class CreateBasicAppDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :basic_app_details do |t|
      t.string :goods_and_service_eng
      t.string :goods_and_service_fr
      t.string :goods_and_service_
      t.string :reg_date
      t.string :reg_no
      t.string :desig_under_prot
      t.string :desig_under_prot_9sexies

      t.timestamps
    end
  end
end
