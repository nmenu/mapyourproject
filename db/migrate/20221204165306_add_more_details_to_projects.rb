class AddMoreDetailsToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :details_01, :string
    add_column :projects, :details_02, :string
    add_column :projects, :details_03, :string
    add_column :projects, :details_04, :string
  end
end
