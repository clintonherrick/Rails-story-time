class DropImageIdColumn < ActiveRecord::Migration
  def change
    remove_column :contributions, :image_id
  end
end
