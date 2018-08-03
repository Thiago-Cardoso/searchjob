class CrawlerController < ApplicationController
    #@result = nil
    
    def index
        # Do something later
        #Vagas
        #url = "https://www.vagas.com.br/vagas-de-Programador?"
        #page = HTTParty.get(url)
        # CrawlerEmpregoJob.perform_now(page)
         #CrawlerVagaService.new(page).call

         #Profissionais
         #url = "https://empregos.profissionaisti.com.br/?s=Programador"
         #page = HTTParty.get(url)
         #CrawlerProfissionaisJob.perform_now(page)
         #CrawlerProfissionaisService.new(page).call

          #Empregos
         #url = "https://www.empregos.com.br/vagas/programador"
         #page = HTTParty.get(url)
         #CrawlerEmpregoJob.perform_now(page)
         #CrawlerEmpregoService.new(page).call
        #byebug
    end

    #def index(page)
        # Do something later
       # @result = CrawlerEmpregoService.new(page).call
    #end
    
end