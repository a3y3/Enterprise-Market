class AddNullConstraints < ActiveRecord::Migration[5.1]
  def change
  	change_column_null :rfqs, :commodity_type_id, false
  	change_column_null :rfqs, :quantity, false
  	change_column_null :rfqs, :uom, false
  	change_column_null :rfqs, :pincode, false
  	change_column_null :rfqs, :pending, false
  	change_column_null :rfqs, :mobile_number, false
  	change_column_null :rfqs, :commodity_type_description_id, false
  end
end
