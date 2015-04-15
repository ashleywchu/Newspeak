class User < ActiveRecord::Base
	has_many :comments
	has_many :subscriptions, :foreign_key => :author_id
	has_many :subscribers, :foreign_key => :reader_id, class_name: :Subscription
	has_many :articles, :foreign_key => :author_id	



	# has_many :readers, :foreign_key => :reader_id
	# has_many :relationships, :foreign_key => :reader_id
	# has_many :newfeed_items, through: :relationships
	# has_many :written_articles, :foreign_key => :authors_id

    def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.info.id).first_or_create do |user|
    user.provider = auth.provider
    user.uid = auth.info.id
    user.name = auth.info.display_name
    user.email = auth.info.email
    user.image_url = auth.info.images.first.url
    user.profile_url = auth.info.external_urls[:spotify]
    user.oauth_token = auth["credentials"]["token"]
    user.oauth_expires_at = auth["credentials"]["expires_at"]
    user.oauth_refresh_token = auth["credentials"]["refresh_token"]
    user.save
    end
  end
  
end
