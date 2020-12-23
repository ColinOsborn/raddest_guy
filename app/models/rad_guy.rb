class RadGuy < ApplicationRecord
  has_attached_file :image
  valdiates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end