require 'rails_helper'
require 'crawler_emprego_job'

RSpec.describe CrawlerEmpregoJob, type: :job do
  pending "add some examples to (or delete) #{__FILE__}"
  it "crawlerEmpregos returning the first and second job in page" do
    @page = get_file_as_string("spec/mocks/empregos.html")
    #The variable page have the html content from Empregos.com.br 
    #from query 'programador ruby'
    @results = CrawlerEmpregoJob.new().perform(@page)
    expect(@results).to eq(
        [
            {:title=>"Desenvolvedor Ruby", 
            :company=>"Grupo Método em Ti", 
            :location=>"São Paulo - SP", 
            :published_at=>"Publicado em 20/07/2018", 
            :description=>"Atuará no desenvolvimento e deploy de aplicações web AWS e arquitetura de sistemas com base em Ruby on Rails.", 
            :url=>"https://www.empregos.com.br/vagas/desenvolvedor-ruby/sao-paulo/sp/5600703"
            },
            {:title=>"Analista desenvolvedor especialista Ruby", 
            :company=>"Rakuten", 
            :location=>"São Paulo - SP", 
            :published_at=>"Publicado em 19/07/2018", 
            :description=>"responsável por projetar, construir e manter um código Ruby testável, eficiente, reutilizável e confiável.", 
            :url=>"https://www.empregos.com.br/vagas/analista-desenvolvedor-especialista-ruby/sao-paulo/sp/5654516"
            }
        ]
    )
  end
end
