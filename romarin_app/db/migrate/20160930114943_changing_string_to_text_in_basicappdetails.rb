class ChangingStringToTextInBasicappdetails < ActiveRecord::Migration[5.0]
  def change
  	change_column :basic_app_details, :goods_and_service_fr, :text
  	change_column :basic_app_details, :goods_and_service_, :text
  	change_column :basic_app_details, :goods_and_service_eng, :text
  end
end
