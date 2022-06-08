class Post < ApplicationRecord
  has_many :comments, as: :commentable, dependent: :destroy

  validates_presence_of :title
end
