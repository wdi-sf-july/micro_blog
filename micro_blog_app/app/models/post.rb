class Post < ActiveRecord::Base
  belongs_to :user
  has_many :post_tags
  has_many :tags, :through  => :post_tags
  has_many :comments, :as => :commentable

  def add_tags(tags_arr)
    existing = Tag.where(name: tags_arr)
    new_tags = tags_arr - existing.map {|tag| tag.name }
    existing.concat new_tags.map {|tag| Tag.create(name: tag)}
    self.tags << existing
  end
end
