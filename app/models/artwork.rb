class Artwork < ApplicationRecord
  has_one_attached :file
  has_many :relationships
  has_many :participants, through: :relationships

  validates_presence_of :title
end
