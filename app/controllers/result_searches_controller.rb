class ResultSearchesController < ApplicationController
  def index
      PgSearch.multisearch(params[:query])
  end
end
