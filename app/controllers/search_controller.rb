class SearchController < ApplicationController
    def index
      if params[:query].present?
        jobs = Job.search(params[:query])
      else
        @job = Job.all
      end
    end
end
