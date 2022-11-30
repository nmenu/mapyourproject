class Photo < ApplicationRecord
  belongs_to :project
  has_many_attached :pictures
end
