class RemoveDescriptionFromRfqs < ActiveRecord::Migration[5.1]
  def change
    remove_column :rfqs, :description, :text
  end
end
