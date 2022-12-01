class Project < ApplicationRecord
  has_many :photos, dependent: :destroy
  has_many :videos, dependent: :destroy
  has_many :pdfs, dependent: :destroy
  has_many :ifc_models, dependent: :destroy
  has_many :categories, dependent: :destroy
  belongs_to :user
end
