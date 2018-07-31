class JobsController < ApplicationController
	
	def index
		@jobs = Job.all
	end



	private
	

end