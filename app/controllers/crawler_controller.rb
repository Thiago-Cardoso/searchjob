class CrawlerController < ApplicationController
    #@result = nil
    
    def index
 
        url3 = "https://www.vagas.com.br/vagas-de-Programador"
        page3 = HTTParty.get(url3)
        CrawlerVagaJob.perform_now(page3)
        CrawlerVagaService.new(page3).call

         
        url2 = "https://empregos.profissionaisti.com.br/?s=Programador"
        page2 = HTTParty.get(url2)
        CrawlerProfissionaisJob.perform_now(page2)
        CrawlerProfissionaisService.new(page2).call


        url = "https://www.empregos.com.br/vagas/programador"
        page = HTTParty.get(url)
        CrawlerEmpregoJob.perform_now(page)
        CrawlerEmpregoService.new(page).call

    end


    
end