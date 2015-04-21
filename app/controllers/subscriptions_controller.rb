class SubscriptionsController < ApplicationController

	def create
		Subscription.create(:reader_id => current_user.id, :author_id => params[:id])
		redirect_to :back
	end

	def destroy
		Subscription.find_by_author_id(params[:id]).destroy
		redirect_to :back
	end


end