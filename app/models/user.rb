class User < ActiveRecord::Base
  has_many :comments
  has_many :subscribers, :foreign_key => :author_id, class_name: :Subscription
  has_many :subscriptions, :foreign_key => :reader_id, class_name: :Subscription
  has_many :articles, :foreign_key => :author_id	
  has_reputation :votes, source: {reputation: :votes, of: :articles}, aggregated_by: :sum
  acts_as_messageable
  acts_as_tagger

  def mailboxer_email(object)
      email
  end

  def self.create_with_omniauth(auth)
      User.create(
      # :name => auth.info.name,
      :provider => auth.provider,
      :uid => auth.uid,
      :email => auth.info.email
      )
  end

  def valid_paypal_email?(user_paypal_email)
    if user_paypal_email =~ /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i 
    else
      return false
    end
  end

  def unique_username?(user_name)
    @users = User.all
    if @users.find_by_name(user_name).nil?
      return true
    else
      return false
    end
  end
end
