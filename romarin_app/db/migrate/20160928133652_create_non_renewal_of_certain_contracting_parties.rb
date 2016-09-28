class CreateNonRenewalOfCertainContractingParties < ActiveRecord::Migration[5.0]
  def change
    create_table :non_renewal_of_certain_contracting_parties do |t|
      t.string :designated_contracting_party_code

      t.timestamps
    end
  end
end
