class Brand < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :articles
   has_many :designers
   has_many :locations
   has_many :notifications
   validates_uniqueness_of :name

    acts_as_followable


  has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>" }, :default_url => 'missing.png'
  validates_attachment :logo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end
