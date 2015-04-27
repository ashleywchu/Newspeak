class ArticlesController < ApplicationController
	def new
		@article = Article.new
		# @article.tags.build
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

	def index
		@articles = Article.find_with_reputation(:votes, :all, order: "votes desc") 
	end

	def edit
		@article = Article.find(params[:id])
	end

	def show
		@article = Article.find(params[:id])
		@comment = Comment.new
	end

	def update
		@article = Article.find(params[:id])
		respond_to do |format|
			if @article.update(article_params)
				format.html { redirect_to @article, notice: 'article was successfully updated.' }
				format.json { head :no_content }
			else
				format.html { render action: 'edit' }
				format.json { render json: @article.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		respond_to do |format|
			format.html { redirect_to article_url }
			format.json { head :no_content }
		end
	end

	def vote
		params[:type] == "up" ? params[:value] = params[:value].to_i + 1 : params[:value] = params[:value].to_i - 1
		@article = Article.find(params[:id])
		@article.add_or_update_evaluation(:votes, params[:value], current_user)
		redirect_to :back
	end

	private
	def article_params
		params.require(:article).permit(:author_id, :title, :abstract, :sources, :body, :tag_list).merge(:author_id => current_user.id)
	end

end
