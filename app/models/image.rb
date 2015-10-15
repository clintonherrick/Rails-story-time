class Image <ActiveRecord::Base
  validates :src, :presence => true
  validates :animation, :presence => true
  validates :size, :presence => true

  has_many :contributions
end
