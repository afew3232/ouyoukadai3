class CommentsController < ApplicationController
	def create
		comment = Comment.new(comment_params)
		comment.save
		redirect_back(fallback_location: nil)
	end
	def update
	end
	def destroy
		comment = Comment.find(params[:id])
		comment.delete
		redirect_back(fallback_location: nil)
	end

	private
	def comment_params
		params.require(:comment).permit(:body,:book_id,:user_id)
	end
end
