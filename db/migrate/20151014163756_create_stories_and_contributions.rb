class CreateStoriesAndContributions < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.column :title, :string

      t.timestamps
    end

    create_table :contributions do |c|
      c.column :user, :string
      c.column :sentence, :string
      c.column :image_url, :string
      c.column :story_id, :integer

      c.timestamps
    end
  end
end
