class Participant < ApplicationRecord
  has_many :relationships
  has_many :artworks, through: :relationships

  validates_presence_of :name
end
