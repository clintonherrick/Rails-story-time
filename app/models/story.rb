class Story <ActiveRecord::Base
  validates :title, :presence => true
  has_many :contributions

  default_scope {order('created_at DESC')}
end
