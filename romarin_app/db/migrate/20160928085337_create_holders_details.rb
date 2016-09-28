class CreateHoldersDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :holders_details do |t|
      t.string :not_lang
      t.string :name
      t.string :address
      t.string :entitlement

      t.timestamps
    end
  end
end
