class BlogsController < ApplicationController
	def new
		@blog = Blog.new
	end

	def index
		if params[:title].present?
      @blog = Blog.where("title like ?", "%#{params[:title]}%")
    else
     @blog = Blog.all
    end
	end

	def create

		@blog = Blog.new(title: params[:blog][:title], image: params[:blog][:image])
		@blog.save
		redirect_to @blog
	end

	def show
		@blog = Blog.find(params[:id])
	end

	def edit
		@blog = Blog.find(params[:id])
	end

	def destroy
		@blog = Blog.find(params[:id])
		@blog.destroy
		redirect_to blogs_path
	end

end
