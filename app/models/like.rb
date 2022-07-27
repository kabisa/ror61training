class Like < ApplicationRecord
  belongs_to :likeable, polymorphic: true

  validates_presence_of :uuid
end
