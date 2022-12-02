class Pdf < ApplicationRecord
  belongs_to :project
  has_one_attached :pdf_file
  validate :correct_pdf_file_mime_type
end
