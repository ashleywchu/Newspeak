class Article < ActiveRecord::Base
	belongs_to :author, class_name: :User
	has_many :comments
  has_reputation :votes, source: :user, aggregated_by: :sum
	# has_many :article_tags
	# has_many :tags, through: :article_tags
  # accepts_nested_attributes_for :tags
  acts_as_taggable 

  validates_uniqueness_of :title
  validates_presence_of :title, :abstract, :body
end
