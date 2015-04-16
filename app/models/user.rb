class User < ActiveRecord::Base
	has_many :comments
	has_many :subscriptions, :foreign_key => :author_id
	has_many :subscribers, :foreign_key => :reader_id, class_name: :Subscription
	has_many :articles, :foreign_key => :author_id	

    def self.create_with_omniauth(auth)
        User.create(
        :name => auth.info.name,
        :provider => auth.provider,
        :image => auth.info.image,
        :uid => auth.uid,
        :oauth_token => auth.credentials.token,
        :oauth_expires_at => Time.at(auth.credentials.expires_at)
        )
    end

end
