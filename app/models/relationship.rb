class Relationship < ApplicationRecord
  belongs_to :participant
  belongs_to :artwork

  enum relationship_type: {
    subject: 'subject',
    artist: 'artist',
    item: 'item'
  }

  validates_presence_of :relationship_type
end
