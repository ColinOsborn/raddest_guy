class RadGuy < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end