require 'rails_helper'
require 'crawler_service_vagas'

describe "crawler_service_vagas to vagas.com.br with query 'programador ruby'" do

    it "crawlerVagas returning the first and second job in page" do
        @page = get_file_as_string("spec/mocks/vagas.html")
        #The variable page have the html content from vagas.com.br 
        #from query 'programador ruby'
        @results = CrawlerServiceVagas.new(@page).crawlerVagas
        expect(@results).to eq(
            [
                {:title=>"Analista Programador - Ruby", 
                :company=>"Confidencial", 
                :url=>"https://www.vagas.com.br/vagas/v1740267/analista-programador-ruby", 
                :location=>"São Paulo", 
                :published_at=>"Hoje", 
                :description=>"Fluência da sintaxe de Ruby e suas nuances; Habilidades para escrever bibliotecas Ruby; Familiaridade com com frameworks de aplicações web populares como Ruby on Rails, Sidekiq, RSpec; Hanami e Sequel será diferencial; métodos ágeis e Extreme Programming; Dif…"},
                {:title=>"Analista Programador Ruby on Rails", 
                :company=>"Eicon", 
                :url=>"https://www.vagas.com.br/vagas/v1694108/analista-programador-ruby-on-rails", 
                :location=>"São Paulo", 
                :published_at=>"02/07/2018", 
                :description=>"projetos, manutenção e evolução de sistemas utilizando Ruby onRails. Analisar, prospectar e desenvolver sistemas Requisitos Necessário: Conhecimento no desenvolvimento Ruby on Tails utilizando MySQL, sistemas operacionais: operacionais: Linux. Experiência nas linguage…"}
            ]
        )
    end
end