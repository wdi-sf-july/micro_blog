class Page < ActiveRecord::Base
  belongs_to :user
  validates :name, :inclusion => {:in => %w(about contact) }
end
