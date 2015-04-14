class Subscriptions < ActiveRecord::Base
	belongs_to :author, class_name: :User
	belongs_to :reader, class_name: :User
end
