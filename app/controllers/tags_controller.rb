class TagsController < ApplicationController
	def show
		@tag = Tag.find(params["tag"])
		@articles = Article.tagged_with(@tag.name)
	end

	def index
		binding.pry
		@tags = Tag.all
	end

end