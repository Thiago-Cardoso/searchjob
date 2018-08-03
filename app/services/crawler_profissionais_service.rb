class CrawlerProfissionaisService
    def initialize(page)
        @page = page
    end

        def call
            parsed_page = Nokogiri::HTML(@page)
            jobs = Array.new
                job_listings = parsed_page.css('div.job-list-content')
                job_listings.each do |job_listing|
                    job = {
                        title: job_listing.css('h4').text,
                        company: job_listing.css('a')[1].text,
                        location: job_listing.css('a')[2].text,
                        published_at: job_listing.css('a')[4].text,
                        description:  job_listing.css('a')[3].text,
                        url:  job_listing.css('a')[0].attributes["href"].value
                    }
                    #byebug
        
                job[:url] = job.values[5]
        
                jobs << job
                end
                return jobs.take(2)
        byebug
    end
end