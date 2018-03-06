class CreateCommodityTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :commodity_types do |t|
      t.text :name
      t.integer :available_quantity

      t.timestamps
    end
  end
end
