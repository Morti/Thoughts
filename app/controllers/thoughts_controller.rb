class ThoughtsController < ApplicationController
	include ThoughtsHelper
	
	def index
  		@thoughts = Thought.all
	end
	
	def new
		@thoughts = Thought.new
	end
	
	def create
		@thoughts = Thought.new(thought_params)
		@thoughts.save
		redirect_to thoughts_path(@thoughts)
	end
	
	def about
	end
	
	def faq
	end
	
	def report
	end
end
