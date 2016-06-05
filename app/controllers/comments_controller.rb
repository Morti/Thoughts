class CommentsController < ApplicationController
	def create
		@comment = Comment.new(comment_params)
		@comment.thought_id = params[:thought_id]

		@comment.save

		redirect_to thought_path(@comment.thought)
	end

	def comment_params
		params.require(:comment).permit(:body)
	end
end
