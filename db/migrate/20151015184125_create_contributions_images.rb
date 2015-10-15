class CreateContributionsImages < ActiveRecord::Migration
  def change

    drop_table :images_contributions


    create_table :contributions_images do |t|
        t.belongs_to :image, index: true
        t.belongs_to :contribution, index: true


    end
  end
end
