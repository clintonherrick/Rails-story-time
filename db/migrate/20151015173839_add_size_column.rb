class AddSizeColumn < ActiveRecord::Migration
  def change

    add_column :images, :size, :string
    
  end
end
