class Home


	def self.most_popular
		all_articles.sort! {|p2, p1| p1.reputation_for(:votes) <=> p2.reputation_for(:votes)}
	end
	


	def self.most_recent
		all_articles.sort! {|p2, p1| p1.created_at <=> p2.created_at}
	end
	

	private

	def self.all_articles
		User.all.each_with_object([]) do |user, array|
			user.articles.each do |article|
				array << article
			end
		end
	end

end