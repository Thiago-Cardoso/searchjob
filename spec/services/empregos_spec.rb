require 'rails_helper'
require 'crawler_service_empregos'

describe "service test of empregos.com.br with query 'programador ruby'" do
    @page = get_file_as_string("spec/mocks/Empregos.html")
    #The variable page have the html content from Empregos.com.br 
    #from query 'programador ruby'
    @results = CrawlerEmprego.new(@campaign).call
    expect(@results).to eq(3)
end
