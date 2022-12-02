class Photo < ApplicationRecord
  belongs_to :project
  has_one_attached :image

  # validates_attachment_content_type :images, :content_type ["images/jpg", "images/jpeg", "images/gif", "images/png"]
end
