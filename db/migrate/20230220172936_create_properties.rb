class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :property_name
      t.string :property_value

      t.timestamps
    end
  end
end
