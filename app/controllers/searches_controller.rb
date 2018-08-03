class SearchesController < ApplicationController
  def index
     and (return if performed?)
    search = PgSearch.multisearch(params[:value]).order("created_at DESC")
    render json: Job.new(search.map(&:searchable)).serialized_json
  end

  

  private

    def check_search_value
      if params[:value].present? && params[:value].length < 3
        render json: { errors: "Parameter :value must have at least 3 characters" }
      end
end
