class TagsController < ApplicationController
	def show
		@tag = Tag.find_by("id")
		@articles = Article.tagged_with(@tag.name)
	end

	def index
		@tags = Article.tag_counts_on(:tags)
	end

end