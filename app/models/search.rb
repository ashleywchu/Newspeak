class Search

	def self.author_result(params)
  	@authors = []
  	Article.all.each do |article|
				@authors << article.author if article.author.name.match(/#{params[:search][:name]}/i) && !@authors.include?(article.author)
  	end
  	@authors
  end

  def self.tag_result(params)
  	@tags = []
  	Article.all.each do |article|
  		article.tags.each do |tag|
  			@tags << article if tag.name.match(/#{params[:search][:name]}/i)
  		end
  	end
  	@tags
  end

end
