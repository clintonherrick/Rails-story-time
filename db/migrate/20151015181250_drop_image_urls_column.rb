class DropImageUrlsColumn < ActiveRecord::Migration
  def change
    remove_column :contributions, :image_urls
  end
end
