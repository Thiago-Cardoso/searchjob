class CrawlerVagaJob < ApplicationJob
  queue_as :vagajob

  def perform(page3)
    # Do something later
     #Do something later
     CrawlerVagaService.new(page3).call
     #byebug
 
  end
end
