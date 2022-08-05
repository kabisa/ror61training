class Like < ApplicationRecord
  belongs_to :likeable, polymorphic: true

  validates :uuid, presence: true, uniqueness: { scope: :likeable_id }
end
