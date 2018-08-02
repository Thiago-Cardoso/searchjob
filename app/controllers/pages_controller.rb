class PagesController < ApplicationController
  def home
    page = get_file_as_string("spec/mocks/empregos.html")
    CrawlerEmpregoJob.perform_later page
  end

def get_file_as_string(filename)
data = ''
f = File.open(filename, "r") 
f.each_line do |line|
    data += line
end
    return data
end

  def about
  end

end
