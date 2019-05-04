class Relationship < ApplicationRecord
  belongs_to :participant
  belongs_to :artwork

  validates_presence_of :relationship_type
end
