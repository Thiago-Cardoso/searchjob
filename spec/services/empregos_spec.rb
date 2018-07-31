require 'rails_helper'
require 'crawler_service_empregos'

describe "crawler_service_empregos to empregos.com.br with query 'programador ruby'" do
    it "crawlerEmpregos returning the first job in page" do
        @page = get_file_as_string("spec/mocks/Empregos.html")
        #The variable page have the html content from Empregos.com.br 
        #from query 'programador ruby'
        @results = CrawlerServiceEmprego.new(@campaign).crawlerEmpregos
        expect(@results).to eq([["Desenvolvedor Ruby", 
        "Atuará no desenvolvimento e deploy de aplicações web AWS e arquitetura de sistemas com base em Ruby on Rails.", 
        "20/07/2018", 
        "Grupo Método em TI",
        "São Paulo - SP" ]])
    end

    it "crawlerEmpregos returning the first and second job in page" do
        @page = get_file_as_string("spec/mocks/Empregos.html")
        #The variable page have the html content from Empregos.com.br 
        #from query 'programador ruby'
        @results = CrawlerServiceEmprego.new(@campaign).crawlerEmpregos
        expect(@results).to eq(
        [["Desenvolvedor Ruby", 
        "Atuará no desenvolvimento e deploy de aplicações web AWS e arquitetura de sistemas com base em Ruby on Rails.", 
        "20/07/2018", 
        "Grupo Método em TI",
        "São Paulo - SP" ], 
        ["Analista desenvolvedor especialista Ruby ", 
        "responsável por projetar, construir e manter um código Ruby testável, eficiente, reutilizável e confiável.", 
        "19/07/2018", 
        "Rakuten",
        "São Paulo - SP" ]])
    end
end
