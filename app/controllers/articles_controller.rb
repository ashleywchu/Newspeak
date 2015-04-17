class ArticlesController < ApplicationController
	def new
	end

	def index
		@articles = Article.all
	end

	def create
		@article = Article.new
		@article.tags.build
	end

	def edit
	end

	def show
	end

	def update
	end
end
