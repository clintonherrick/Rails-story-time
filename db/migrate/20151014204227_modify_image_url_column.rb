class ModifyImageUrlColumn < ActiveRecord::Migration
  def change
    remove_column :contributions, :image_url
    add_column :contributions, :image_urls, :string, array: true, default: []
  end
end
