class Article < ActiveRecord::Base
	belongs_to :author, class_name: :User
	has_many :comments
	# has_many :article_tags
	# has_many :tags, through: :article_tags
  # accepts_nested_attributes_for :tags
  acts_as_taggable_on :tags
end
