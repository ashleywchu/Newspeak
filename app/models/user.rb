class User < ActiveRecord::Base
	has_many :comments
	has_many :relationships
	has_many :authors, :foreign_key => :author_id
	has_many :readers, :foreign_key => :reader_id
end
