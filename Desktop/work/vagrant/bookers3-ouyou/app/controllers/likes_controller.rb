class LikesController < ApplicationController
	def create
		Like.create(book_id: params[:id],user_id: current_user.id)
		redirect_back(fallback_location: nil)
	end

	def destroy
		like = Like.find_by(book_id: params[:id])
		like.delete
		redirect_back(fallback_location: nil)
	end



end
