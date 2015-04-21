class CommentsController < ApplicationController
	def new
		@comment = Comment.find(session[:user_id])
		@comment = Comment.new
	end

	def create
		article = Article.find(params[:article_id])
		@comment = article.comments.build(comment_params)
		@comment.save
		redirect_to @comment.article
	end

	private
	def comment_params
		params.require(:comment).permit(:body).merge(:user_id => current_user.id)
	end

end
