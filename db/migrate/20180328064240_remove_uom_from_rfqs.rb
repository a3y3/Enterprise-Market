class RemoveUomFromRfqs < ActiveRecord::Migration[5.1]
  def change
    remove_column :rfqs, :uom, :string
  end
end
