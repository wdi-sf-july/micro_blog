
class Tag < ActiveRecord::Base
  has_many :post_tags
  has_many :posts, :through => :post_tags


  validates :name, :uniqueness => true
  validates :name, :format => { :with => /[a-zA-Z0-9]+/ }


end
