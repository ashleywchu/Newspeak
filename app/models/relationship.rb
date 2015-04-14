class Relationship < ActiveRecord::Base
	belongs_to :author
	belongs_to :reader
end
