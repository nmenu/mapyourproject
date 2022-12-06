class Project < ApplicationRecord
  has_many :photos, dependent: :destroy
  has_many :videos, dependent: :destroy


  has_many :categories, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :photos, allow_destroy: true

  has_many_attached :images, dependent: :destroy
  has_one_attached :ifc_model, dependent: :destroy
  has_one_attached :pdf, dependent: :destroy
end
