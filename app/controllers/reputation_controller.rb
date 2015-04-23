class ReputationController < ApplicationController

  def create
    Reputation.create(:reader_id => params[:reader_id], :author_id => params[:author_id])
    redirect_to :back
  end

  def destroy
   Reputation.find_by_author_id_and_reader_id(params[:author_id], params[:reader_id]).destroy
    redirect_to :back
  end

end