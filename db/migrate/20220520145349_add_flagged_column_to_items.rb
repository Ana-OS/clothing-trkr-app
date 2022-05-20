class AddFlaggedColumnToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :flagged, :boolean, default: false
  end
end
