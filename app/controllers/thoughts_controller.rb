class ThoughtsController < ApplicationController
	include ThoughtsHelper
	
	#Need to be logged in to remove thoughts with destroy
	before_filter :require_login, only: [:destroy]
	
	def index
  		@thoughts = Thought.all.limit(50).order('id desc')
	end
	
	def show
		@thoughts = Thought.find(params[:id])
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
	
	def destroy
		@thoughts = Thought.find(params[:id])
		@thoughts.destroy
		redirect_to thoughts_path(@thoughts)
	end
end
