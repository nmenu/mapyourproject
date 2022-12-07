class RemoveTableIfcPdf < ActiveRecord::Migration[7.0]
  def change
    drop_table :pdfs
    drop_table :ifc_models
  end
end
