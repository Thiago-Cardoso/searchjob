class CrawlerServiceVagas
    def initialize(page)
        @page = page
    end

    def crawlerVagas
        parsed_page = Nokogiri::HTML(@page)
        jobs = Array.new
        job_listings = parsed_page.css('ul')
        puts job_listings
        # job_listings = job_listings.take(2)
        # job_listings.each do |job_listing|
        #     job = {
        #         title: job_listing.css('a')[0].text,
        #         company: job_listing.css('span.nome-empresa').text,
        #         location: job_listing.css('span.cidade-estado').text,
        #         published_at: job_listing.css('span.publicado').text,
        #         description: job_listing.css('p')[0].text,
        #         url:  job_listing.css('a')[0].attributes["href"].value
        #     }
        

        end
    end
end