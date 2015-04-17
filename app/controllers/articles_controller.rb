class ArticlesController < ApplicationController
	
	def new
		@article = Article.new
		@article.tags.build
	end

	def index
	end

	def create
	end

	def edit
	end

	def show
	end

	def update
	end
end
