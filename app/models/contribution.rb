class Contribution < ActiveRecord::Base
  validates :user, :presence => true
  validates :sentence, :presence => true
  validates :image_url, :presence => true

  belongs_to :story
end
