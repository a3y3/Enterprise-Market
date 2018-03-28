class AddCommodityTypeUomIdToRfqs < ActiveRecord::Migration[5.1]
  def change
    add_column :rfqs, :commodity_type_uom_id, :integer, :null => false
  end
end
