class CrawlerServiceVagas
    def initialize(page)
        @page = page
    end

    def crawlerVagas
        parsed_page = Nokogiri::HTML(@page)
        jobs = Array.new
        job_listings = parsed_page.css('ul')
        #puts job_listings
        
        job_listings.each do |job_listing|
            job = {
                title: job_listing.css('h2.cargo').text
            }
            job = job.values[0].gsub("\n", ' ').squeeze(' ').strip()
            jobs << job
        end
        puts jobs
    end
end