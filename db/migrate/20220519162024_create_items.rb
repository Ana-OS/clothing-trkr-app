class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :color
      t.string :type_of_product
      t.integer :size
      t.integer :price

      t.timestamps
    end
  end
end
