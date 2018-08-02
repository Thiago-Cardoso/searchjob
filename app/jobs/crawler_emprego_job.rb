class CrawlerEmpregoJob < ApplicationJob
    queue_as :empregojob

    def perform(page)
      #Do something later
      @result = CrawlerEmpregoService.new(page).call
      byebug
    end
    
    # @result.each do |job|
    #     job.save
    # end

end