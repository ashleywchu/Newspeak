class ArticlesController < ApplicationController
	
	def new
		@article = Article.new
		@article.tags.build
	end

	def index
	end

	def create
		@article = Article.new(article_params)
		respond_to do |format|
			if @article.save
				format.html { redirect_to @article, notice: 'The news was successfully reported.'}
			else
				format.html { render action: 'new' }
			end
		end
	end

	def edit
	end

	def show
		@article = Article.find(params[:id])
		@comment = Comment.new
		@comments = @article.comments.all
	end

	def update
	end

	private
	def article_params
		params.require(:article).permit(:title, :abstract, :sources, :body, :tags_attributes => [:name], :tag_ids => [])
	end

end
