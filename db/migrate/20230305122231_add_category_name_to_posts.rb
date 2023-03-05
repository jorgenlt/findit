class AddCategoryNameToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :category_name, :string
    add_column :posts, :sub_category_name, :string
  end
end
