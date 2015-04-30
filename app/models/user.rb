class User < ActiveRecord::Base
	has_many :comments
	has_many :subscribers, :foreign_key => :author_id, class_name: :Subscription
	has_many :subscriptions, :foreign_key => :reader_id, class_name: :Subscription
	has_many :articles, :foreign_key => :author_id	
  has_reputation :votes, source: {reputation: :votes, of: :articles}, aggregated_by: :sum
  acts_as_messageable
  acts_as_tagger
  acts_as_taggable

  validates_presence_of :uid, :provider, :email
  
  def mailboxer_email(object)
      email
  end

  def self.create_with_omniauth(auth)
      User.create(
      :provider => auth.provider,
      :uid => auth.uid,
      :email => auth.info.email
      )
  end

  def valid_email?(user_paypal_email)
    if user_paypal_email == "" || user_paypal_email =~ /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i 
      return true
    else
      return false
    end
  end

  def unique_username?(username)
    users = User.all
    usernames = users.collect{|user| user.name.downcase}
    if usernames.include?(username.downcase)
      return false
    else
      return true
    end
  end
end
