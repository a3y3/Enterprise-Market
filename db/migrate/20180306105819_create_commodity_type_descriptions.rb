class CreateCommodityTypeDescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :commodity_type_descriptions do |t|
      t.integer :commodity_type_id
      t.text :description

      t.timestamps
    end
  end
end
