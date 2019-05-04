class Artwork < ApplicationRecord
  validates_presence_of :title
  has_one_attached :file

  has_many :taggings
  has_many :tags, through: :taggings

  def self.tagged_with(name)
    Tag.find_by!(name: name).posts
  end

  def self.tag_counts
    Tag.select('tags.*, count(taggings.tag_id) as count').joins(:taggings).group('taggings.tag_id')
  end

  def tag_list
    tags.map(&:name).join(', ')
  end

  def update_tags(tags)
    tag_names = tags.select(&:present?)
    taggings.each do |tagging|
      tagging.destroy unless tag_names.include?(tagging.tag.name)
    end
    tag_names.each do |tag_name|
      Tagging.find_or_create_by(tag: Tag.find_or_create_by(name: tag_name), artwork_id: id)
    end
  end
end
