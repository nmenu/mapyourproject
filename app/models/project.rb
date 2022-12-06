class Project < ApplicationRecord
  belongs_to :user
  has_many :categories, dependent: :destroy

  has_one_attached :ifc_model, dependent: :destroy
  has_one_attached :pdf, dependent: :destroy
  has_many_attached :images, dependent: :destroy
end
