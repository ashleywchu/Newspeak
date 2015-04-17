class SearchController < ApplicationController

  def search
  	@tag_results = []
  	@author_results = []
  end

  def result
  	@results = []
  	@author_results = []
  	Article.all.each do |article|
  		article.tags.each do |tag|
				@tag_results << article if tag.name.match(/#{params[:search][:name]}/)
				@author_results << article.author if article.author.name.match(/#{params[:search][:name]}/)
  		end
  	end
  	render "search"
  end

  private

  def search_params
    params.require(:search).permit(:name)
  end
end