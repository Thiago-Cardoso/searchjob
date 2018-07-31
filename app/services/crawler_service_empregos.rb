class CrawlerServiceEmprego
    def initialize(page)
        @page = page
    end

    def call
        return ["Desenvolvedor Ruby", 
        "Atuará no desenvolvimento e deploy de aplicações web AWS e arquitetura de sistemas com base em Ruby on Rails.", 
        "20/07/2018", 
        "Grupo Método em TI",
        "São Paulo - SP"]
    end
end