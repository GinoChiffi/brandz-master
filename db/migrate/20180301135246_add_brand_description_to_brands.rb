class AddBrandDescriptionToBrands < ActiveRecord::Migration[5.0]
  def change
    add_column :brands, :brand_description, :string
  end
end
