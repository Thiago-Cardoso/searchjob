class CrawlerEmpregoJob < ApplicationJob
    queue_as :empregojob

    def perform(page)
      #Do something later
      @result = CrawlerServiceEmprego.new(page).crawlerEmpregos
      puts @result
    end

    # @result.each do |job|
    #     job.save
    # end

end