class AddCommentsColumnToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :comment, :text
  end
end
