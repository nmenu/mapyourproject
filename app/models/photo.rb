class Photo < ApplicationRecord
  belongs_to :project
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  # validates_attachment_content_type :images, :content_type ["images/jpg", "images/jpeg", "images/gif", "images/png"]
end
