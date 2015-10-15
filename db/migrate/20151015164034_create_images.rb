class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.column :src, :string
      t.column :animation, :string

      t.timestamps
    end

    add_column :contributions, :image_id, :integer, array: true
  end
end
