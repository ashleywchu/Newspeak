class Tagging < ActiveRecord::Base
	belongs_to :taggable, class_name: "Article"
	belongs_to :tag
end