class Comment < ApplicationRecord
  belongs_to :link

  validates_presence_of :body
end
