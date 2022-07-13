class Link < ApplicationRecord
  has_many :comments, as: :commentable, dependent: :destroy

  validates_presence_of :title
  validates :url,
            presence: true,
            uniqueness: true,
            format: { with: %r{https?://}i }

  def inspect
    "##{id}: #{title}, #{url}"
  end
end
