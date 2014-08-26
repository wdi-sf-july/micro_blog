class User < ActiveRecord::Base
  validates :email, :confirmation => true
  has_many :pages, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :tags, :through => :posts

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, :format => { with: /.+@.+\.+/ }

end
