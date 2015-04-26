class Tagging < ActiveRecord::Base
	belongs_to :article, foreign_key: :taggable_id
	belongs_to :tag
end