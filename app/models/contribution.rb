class Contribution < ActiveRecord::Base
  validates :user, :presence => true
  validates :sentence, :presence => true
  validates :image_urls, :presence => true
  default_scope {order('created_at ASC')}
  belongs_to :story
  belongs_to :image
end
