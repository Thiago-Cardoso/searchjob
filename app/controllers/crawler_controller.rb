class CrawlerController < ApplicationController
    queue_as :empregojob
    @result = nil
    def perform(page)
        # Do something later
        @result = CrawlerServiceEmprego.new(page).crawlerEmpregos
    end

    
end