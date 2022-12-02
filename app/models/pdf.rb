class Pdf < ApplicationRecord
  belongs_to :project
  has_one_attached :pdf_file
  validate :validate_attachment_filetypes


  def :validate_attachment_filetypes

  end
end
