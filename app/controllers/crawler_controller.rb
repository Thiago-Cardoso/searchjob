class CrawlerController < ApplicationController
    #@result = nil
    
    def index
        # Do something later
        url = "https://www.empregos.com.br/vagas/programador"
        page = HTTParty.get(url)
        CrawlerEmpregoJob.perform_now(page)
        @result = CrawlerEmpregoService.new(page).call
        #byebug
    end

    #def index(page)
        # Do something later
       # @result = CrawlerEmpregoService.new(page).call
    #end
    
end