class Article < ActiveRecord::Base
	belongs_to :author, class_name: :User
	has_many :comments
	has_many :article_tags
	has_many :tags, through: :article_tags
end
