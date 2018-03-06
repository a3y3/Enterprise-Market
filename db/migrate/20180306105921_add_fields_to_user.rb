class AddFieldsToUser < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :first_name, :text
  	add_column :users, :last_name, :text
  	add_column :users, :company_name, :text
  	add_column :users, :mobile_number, :integer
  end
end
