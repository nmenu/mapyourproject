class Photo < ApplicationRecord
  belongs_to :project
  has_many_attached :pictures
  validates_attachment_content_type :pictures, :content_type => ["pictures/jpg", "pictures/jpeg", "pictures/gif", "pictures/png"]
end
