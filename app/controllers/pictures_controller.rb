class PicturesController < ApplicationController
	def new
		@picture = Picture.new
	end
	def create
		@picture = Picture.new(title: params[:picture][:title], text: params[:picture][:text], photo: params[:picture][:photo])
		if @picture.save
		redirect_to @picture
	  else
		render 'new'
	 end
	end

	def index
		@pictures = Picture.all
	end

	def show
		
		@picture = Picture.find(params[:id])
	end

	def edit
		@picture = Picture.find(params[:id])
	end

	def update
		@picture = Picture.find(params[:id])
		if @picture.update(title: params[:picture][:title], text: params[:picture][:text])  
		redirect_to picture_path(@picture)
	else
		render'edit'
	 end
	end

	def destroy
 		@picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to pictures_path
	end

	def images
    @pictures = Picture.all
	end

	def logo
	end

	def about
	end

	def home
	end

	def category
	end
end



