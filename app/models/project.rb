class Project < ApplicationRecord
  has_many :photos, dependent: :destroy
  has_many :videos, dependent: :destroy
  has_many :pdfs, dependent: :destroy
  has_many :ifc_models, dependent: :destroy
  has_many :categories, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :photos, allow_destroy: true
  accepts_nested_attributes_for :pdfs, allow_destroy: true

  has_many_attached :images
end
