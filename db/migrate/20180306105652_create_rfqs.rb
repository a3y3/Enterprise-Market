class CreateRfqs < ActiveRecord::Migration[5.1]
  def change
    create_table :rfqs do |t|
      t.integer :commodity_type_id
      t.text :description
      t.integer :quantity
      t.string :uom
      t.integer :pincode
      t.boolean :pending
      t.integer :mobile_number

      t.timestamps
    end
  end
end
