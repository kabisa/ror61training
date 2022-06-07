# app/models/link.rb
class Link < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates_presence_of :title
  validates :url,
            presence: true,
            uniqueness: true,
            format: { with: %r{https?://}i }
end
