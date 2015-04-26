class TagsController < ApplicationController
	def show
		@tag = Tag.find(params["tag"])
		@articles = Article.tagged_with(@tag.name)
	end

	def index
		binding.pry
		@tags = Article.tag_counts_on(:tags)
	end

end