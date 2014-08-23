class User < ActiveRecord::Base
  validates :email, :confirmation => true
  has_many :pages
  has_many :posts
  has_many :post_tags, :through => :posts
  has_many :tags, :through => :post_tags

end
