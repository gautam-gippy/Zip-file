class CreateStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :statuses do |t|
      t.string :all_goods_and_ser_indi
      t.string :lice_all_desig_parties
      t.string :doc_id
      t.string :gaz_no
      t.string :int_off
      t.string :lic_type
      t.string :not_date
      t.string :o_gaz_no
      t.string :o_pub_date
      t.string :orig_lan
      t.string :pub_date
      t.string :opp_end_date
      t.string :opp_start_date
      t.string :hol_reff
      t.string :off_ref
      t.string :final
      t.string :desig_un_proto
      t.string :desig_u_proto_9sexies
      t.string :desig_contract_par_code
      t.string :eff_reg_date
      t.string :rec_reg_date

      t.timestamps
    end
  end
end
