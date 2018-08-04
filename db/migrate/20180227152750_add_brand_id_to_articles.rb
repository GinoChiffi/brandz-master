class AddBrandIdToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :brand_id, :integer
    add_index :articles, :brand_id
  end
end
