class CreateIfcModels < ActiveRecord::Migration[7.0]
  def change
    create_table :ifc_models do |t|
      t.string :title
      t.string :description
      t.string :url
      t.references :project_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
