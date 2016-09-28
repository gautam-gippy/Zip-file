class CreateRenewels < ActiveRecord::Migration[5.0]
  def change
    create_table :renewels do |t|
      t.string :eff_reg_date
      t.string :rec_reg_date
      t.string :not_date
      t.string :gaz_no
      t.string :pub_date
      t.string :desig_u_agree

      t.timestamps
    end
  end
end
