require './spec/support/read_file_helper'
require './jobs/crawler_emprego_job'
class PagesController < ApplicationController
  
  def home
    page = get_file_as_string("./spec/mocks/empregos.html")
    CrawlerEmpregoJob.perform_later(page)
  end

  def about
  end

end
