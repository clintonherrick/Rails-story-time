class ChangeImageUrlsDefault < ActiveRecord::Migration
  def change
    change_column :contributions, :image_urls, :string, array: true
  end
end
