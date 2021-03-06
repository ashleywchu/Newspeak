class SearchController < ApplicationController

  def search
  end

  def result
  	@tag_results = Search.tag_result(params)
  	@author_results = Search.author_result(params)
    @title_results = Search.title_result(params)
    render "search"
  end

  def autocomplete
    render json: Article.title_search(params[:term])
  end

  private
  def search_params
    params.require(:search).permit(:name)
  end

end