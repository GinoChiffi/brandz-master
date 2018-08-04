class AddBrandIdToLocations < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :brand_id, :integer
    add_index :locations, :brand_id
  end
end
