class CreateImagesContributions < ActiveRecord::Migration
  def change

    create_table :images_contributions do |t|
      t.belongs_to :image, index: true
      t.belongs_to :contribution, index: true

    end
  end
end
