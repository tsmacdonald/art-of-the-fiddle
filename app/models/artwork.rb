class Artwork < ApplicationRecord
  validates_presence_of :title
  has_one_attached :file
end
