class Project < ApplicationRecord
  has_many :photos
  has_many :videos
  has_many :pdfs
  has_many :ifc_models
  has_many :categories
  belongs_to :user
end
