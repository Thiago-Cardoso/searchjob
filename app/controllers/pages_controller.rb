class PagesController < ApplicationController

  def home
     #call job
     #for test run docker-compose up loading sidekic and see http://localhost:3000/sidekiq/ and after run 
      #docker-compose run --rm app bundle exec sidekiq -q empregojob -c 1
     page = get_file_as_string("spec/mocks/empregos.html")
     CrawlerEmpregoJob.perform_later page
  end

  def about
  end

  def get_file_as_string(filename)
    data = ''
    f = File.open(filename, "r") 
    f.each_line do |line|
      data += line
    end
    return data
  end
end
