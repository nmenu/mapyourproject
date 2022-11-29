class AddCollumsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :company_name, :string
    add_column :users, :description, :string
    add_column :users, :adress, :string
    add_column :users, :city, :string
    add_column :users, :website, :string
    add_column :users, :zip_code, :integer
  end
end
