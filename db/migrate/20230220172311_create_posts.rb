class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :post_title
      t.string :post_body
      t.integer :price
      t.string :image_url
      t.boolean :is_active
      t.integer :sub_category_id
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
