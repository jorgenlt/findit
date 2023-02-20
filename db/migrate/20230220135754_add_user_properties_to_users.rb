class AddUserPropertiesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :integer
    add_column :users, :address, :string
    add_column :users, :zip_code, :integer
    add_column :users, :city, :string
    add_column :users, :country, :string
  end
end
