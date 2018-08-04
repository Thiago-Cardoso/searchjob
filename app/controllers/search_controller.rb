class SearchController < ApplicationController
    def index
      if params[:query].present?
        @jobs = Job.search(params[:query]).paginate(:page => params[:page], :per_page => 20)
      else
        @jobs = Job.order(created_at: :desc).paginate(:page => params[:page], :per_page => 20)
      end
    end
end
