class CrawlerVagaJob < ApplicationJob
  queue_as :vagajob

  def perform(page)
    # Do something later
     #Do something later
     @result = CrawlerVagaService.new(page).call
     #byebug
     puts @result
  end
end
