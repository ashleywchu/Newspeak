class TagsController < ApplicationController
	def show
		@tag = Tag.find(params["tag"])
		@articles = Article.tagged_with(@tag.name)
	end

	def index
		@tags = Tag.all
	end

end