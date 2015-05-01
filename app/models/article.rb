class Article < ActiveRecord::Base
	belongs_to :author, class_name: :User
	has_many :comments
  has_reputation :votes, source: :user, aggregated_by: :sum
	# has_many :article_tags
	# has_many :tags, through: :article_tags
  # accepts_nested_attributes_for :tags
  mount_uploader :image, ImageUploader
  acts_as_taggable
end

def self.search(search)
  where('title LIKE ?', "%#{search}%")
end

def image_name
  File.basename(image.path || image.filename) if image
end

def self.title_search(search)
  search(search).limit(5).pluck(:title)
  search(search).limit(5).pluck(:tags)
  search(search).limit(5).pluck(:author)
end