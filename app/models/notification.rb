class Notification < ApplicationRecord
  belongs_to :brand

  default_scope { order("created_at DESC")}

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
