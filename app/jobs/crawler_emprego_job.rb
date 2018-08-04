class CrawlerEmpregoJob < ApplicationJob
    queue_as :empregojob

    def perform(page)

      CrawlerEmpregoService.new(page).call
      #byebug
    end
    

end