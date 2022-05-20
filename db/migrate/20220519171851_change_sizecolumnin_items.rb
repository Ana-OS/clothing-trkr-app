class ChangeSizecolumninItems < ActiveRecord::Migration[6.1]
  def change
    change_column :items, :size, :string
  end
end
