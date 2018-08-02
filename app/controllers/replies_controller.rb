class RepliesController < ApplicationController
	def create
		@picture = Picture.find(params[:picture_id])
		@reply = @picture.replies.create(reply: params[:reply][:reply])
		@reply.save
		redirect_to picture_path(@picture)
	end
end



