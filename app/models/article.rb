class Article < ApplicationRecord
  belongs_to :brand


  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, :default_url => 'missing.png'
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
