class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :description
      t.string :url
      t.references :project_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
