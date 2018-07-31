require 'rails_helper'
require 'crawler_service_empregos'

describe "crawler_service_empregos_test" do
    it "service test of empregos.com.br with query 'programador ruby'" do
        @page = get_file_as_string("spec/mocks/Empregos.html")
        #The variable page have the html content from Empregos.com.br 
        #from query 'programador ruby'
        @results = CrawlerServiceEmprego.new(@campaign).call
        expect(@results).to eq(["Desenvolvedor Ruby", 
        "Atuará no desenvolvimento e deploy de aplicações web AWS e arquitetura de sistemas com base em Ruby on Rails.", 
        "20/07/2018", 
        "Grupo Método em TI",
        "São Paulo - SP" ])
    end
end
