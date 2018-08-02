require './spec/support/read_file_helper'
class PagesController < ApplicationController
  
  def home
    page = get_file_as_string("./spec/mocks/empregos.html")
    CrawlerEmpregoJob.perform_now(page)
  end

  def about
  end

end
