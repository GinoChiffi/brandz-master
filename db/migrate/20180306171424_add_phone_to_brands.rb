class AddPhoneToBrands < ActiveRecord::Migration[5.0]
  def change
    add_column :brands, :phone, :string
  end
end
