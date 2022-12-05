class Pdf < ApplicationRecord
  belongs_to :project
  has_one_attached :pdf_file, dependent: :destroy
end
