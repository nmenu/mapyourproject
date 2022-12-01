class Project < ApplicationRecord
  has_many :photos
  has_many :videos
  has_many :pdfs
  has_many :ifc_models
  has_many :categories
  belongs_to :user
  accepts_nested_attributes_for :photos, allow_destroy: true


end
