class CommentsController < ApplicationController
	def create
	
	@picture = Picture.find(params[:picture_id])	
	@comment = @picture.comments.create(comments: params[:comment][:comments], body: params[:comment][:body])
	@comment.save
	redirect_to picture_path(@picture)
	end



	
end
