class AddNameColumnToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :name, :string
  end
end
