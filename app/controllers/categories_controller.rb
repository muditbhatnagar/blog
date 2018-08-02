class CategoriesController < ApplicationController
	def index
		@category = Category.all
	end

	def create
		@category = Category.new(title: params[:category][:title], description: params[:category][:description])
		@category.save
		redirect_to @category
	end
end
