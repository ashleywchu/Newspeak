class User < ActiveRecord::Base
	has_many :comments
	has_many :subscriptions, :foreign_key => :author_id
	has_many :subscribers, :foreign_key => :reader_id, class_name: :Subscription
	has_many :articles, :foreign_key => :author_id	

    def self.create_with_omniauth(auth)
        User.create(
        :name => auth.info.name,
        :provider => auth.provider,
        :uid => auth.uid,
        :email => auth.info.email
        )
    end

end
