class CrawlerServiceEmprego
    def initialize(page)
        @page = page
    end

    def crawlerEmpregos
        parsed_page = Nokogiri::HTML(@page)
        jobs = Array.new
        job_listings = parsed_page.css('div.descricao')
        job_listings.each do |job_listing|
            job = {
                title: job_listing.css('a')[0].text,
                company: job_listing.css('span.nome-empresa').text,
                location: job_listing.css('span.cidade-estado').text,
                published_at: job_listing.css('span.publicado').text,
                url:  job_listing.css('a')[0].attributes["href"].value
            }
        jobs << job
        end
        #byebug
    end
end