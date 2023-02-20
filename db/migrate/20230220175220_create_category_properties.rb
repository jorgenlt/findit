class CreateCategoryProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :category_properties do |t|
      t.references :category, null: false, foreign_key: true
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
