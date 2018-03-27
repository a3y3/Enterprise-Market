class AddCommodityTypeDescriptionIdToRfqs < ActiveRecord::Migration[5.1]
  def change
    add_column :rfqs, :commodity_type_description_id, :integer
  end
end
