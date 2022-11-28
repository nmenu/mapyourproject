class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :detail
      t.string :owner
      t.string :main_contractor
      t.integer :year_completion
      t.integer :duration
      t.integer :budget
      t.integer :labor_force
      t.decimal :latitude
      t.decimal :longitude
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
