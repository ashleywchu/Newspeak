class Reputation < ActiveRecord::Base
  belongs_to :author, class_name: :User, :through => :article
  belongs_to :reader, class_name: :User, :through => :article
end
