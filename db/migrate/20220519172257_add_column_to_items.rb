class AddColumnToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :quantity, :integer
  end
end
