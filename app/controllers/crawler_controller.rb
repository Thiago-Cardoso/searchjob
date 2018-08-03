class CrawlerController < ApplicationController
    #@result = nil
    
    def index
        # Do something later
        url = "https://www.vagas.com.br/vagas-de-Programador?"
        page = HTTParty.get(url)
       # CrawlerEmpregoJob.perform_now(page)
         CrawlerVagaService.new(page).call
        #byebug
    end

    #def index(page)
        # Do something later
       # @result = CrawlerEmpregoService.new(page).call
    #end
    
end