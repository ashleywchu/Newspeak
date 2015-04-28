class User < ActiveRecord::Base
	has_many :comments
	has_many :subscribers, :foreign_key => :author_id, class_name: :Subscription
	has_many :subscriptions, :foreign_key => :reader_id, class_name: :Subscription
	has_many :articles, :foreign_key => :author_id	
  has_reputation :votes, source: {reputation: :votes, of: :articles}, aggregated_by: :sum
  acts_as_messageable
  acts_as_tagger
  acts_as_taggable

  def mailboxer_email(object)
      email
  end

  def self.create_with_omniauth(auth)
      User.create(
      :name => auth.info.name,
      :provider => auth.provider,
      :uid => auth.uid,
      :email => auth.info.email
      )
  end

  validates_format_of :paypal_email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/
end
