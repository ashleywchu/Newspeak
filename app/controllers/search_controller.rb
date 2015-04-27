class SearchController < ApplicationController

  def search
  end

  def result
  	@tag_results = Search.tag_result(params)
  	@author_results = Search.author_result(params)
  	render "search"
  end

  private

  def search_params
    params.require(:search).permit(:name)
  end

  def autocomplete
    render json: Article.location_search(params[:term])
 end

end