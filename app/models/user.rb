class User < ActiveRecord::Base
	has_many :comments
	has_many :subscriptions, :foreign_key => :author_id
	has_many :subscriptions, :foreign_key => :reader_id
	has_many :articles, :foreign_key => :author_id



	# has_many :readers, :foreign_key => :reader_id
	# has_many :relationships, :foreign_key => :reader_id
	# has_many :newfeed_items, through: :relationships
	# has_many :written_articles, :foreign_key => :authors_id
end
