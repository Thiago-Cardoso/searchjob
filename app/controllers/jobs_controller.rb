class JobsController < ApplicationController
	before_action :set_job, only: :show
	def index
		@jobs = Job.order(created_at: :desc).paginate(:page => params[:page], :per_page => 20)
	end
	def show
	end


	private
	
		def set_job
			@job = Job.find(params[:id])
		end
end