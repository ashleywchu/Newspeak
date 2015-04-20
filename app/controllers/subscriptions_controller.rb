class SubscriptionsController < ApplicationController

def create
    Subscription.create(params[:author_id])
end

def destroy

end


end