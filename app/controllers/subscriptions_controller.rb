class SubscriptionsController < ApplicationController

	def create
		Subscription.create(:reader_id => params[:reader_id], :author_id => params[:author_id])
		redirect_to :back
	end

	def destroy
		Subscription.find_by_author_id_and_reader_id(params[:author_id], params[:reader_id]).destroy
		redirect_to :back
	end

end