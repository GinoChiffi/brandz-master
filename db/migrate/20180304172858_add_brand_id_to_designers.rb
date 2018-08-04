class AddBrandIdToDesigners < ActiveRecord::Migration[5.0]
  def change
    add_column :designers, :brand_id, :integer
    add_index :designers, :brand_id
  end
end
