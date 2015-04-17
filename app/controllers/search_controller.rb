class SearchController < ApplicationController
  def search
    redirect_to artist_path(@artist)
  end

  private

  def search_params
    params.require(:search).permit(:name)
  end
end
