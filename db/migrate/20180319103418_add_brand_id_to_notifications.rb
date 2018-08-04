class AddBrandIdToNotifications < ActiveRecord::Migration[5.0]
  def change
    add_column :notifications, :brand_id, :integer
    add_index :notifications, :brand_id
  end
end
