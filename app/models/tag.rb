class Tag < ApplicationRecord
  has_many :taggings
  has_many :artworks, through: :taggings

  validates_uniqueness_of :name
end
