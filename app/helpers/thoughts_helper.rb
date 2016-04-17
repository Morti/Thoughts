module ThoughtsHelper
	def thought_params
		params.require(:thought).permit(:mood, :location, :body)
	end
end
