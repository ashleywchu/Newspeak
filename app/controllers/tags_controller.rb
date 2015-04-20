class TagsController < ApplicationController
	def new
	end

	def create
	end

	def index
		@tags = Tag.all
	end

	def edit
	end

	def show
	end

end


  # # GET /tags
  # # GET /tags.json
  # def index
  #   @tags = Tag.all
  # end

  # # GET /tags/1
  # # GET /tags/1.json
  # def show
  #   @tag = Tag.find(params[:id])
  # end
