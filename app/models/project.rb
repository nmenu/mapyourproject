class Project < ApplicationRecord
  belongs_to :user
  has_many :categories, dependent: :destroy

  has_one_attached :ifc_model, dependent: :destroy
  has_one_attached :pdf, dependent: :destroy
  has_many_attached :images, dependent: :destroy

  # validate :validate_images

  # private

  # def validate_images
  #   return if images.count <= 5

  #   errors.add(:images, 'Please add an image')
  # end

end
