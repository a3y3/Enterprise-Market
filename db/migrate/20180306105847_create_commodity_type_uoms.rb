class CreateCommodityTypeUoms < ActiveRecord::Migration[5.1]
  def change
    create_table :commodity_type_uoms do |t|
      t.integer :commodity_type_id
      t.text :uom

      t.timestamps
    end
  end
end
