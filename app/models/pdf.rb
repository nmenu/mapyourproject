class Pdf < ApplicationRecord
  belongs_to :project
  has_one_attached :pdf_file
  validate :correct_pdf_file_mime_type

  private

  def correct_pdf_file_mime_type
    if pdf_file.attached? && !pdf_file.content_type.in?(%w(application/msword application/pdf))
      errors.add(:pdf_file, 'Must be a PDF or a DOC file')
    end
  end
end
