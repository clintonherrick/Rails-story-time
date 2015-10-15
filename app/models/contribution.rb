class Contribution < ActiveRecord::Base
  validates :user, :presence => true
  validates :sentence, :presence => true

  default_scope {order('created_at ASC')}
  belongs_to :story
  has_and_belongs_to_many :images
end
