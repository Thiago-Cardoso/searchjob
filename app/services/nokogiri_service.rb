## Test using Scraping in IRB Run docker-compose run --rm app bundle exec rails console - require "nokogiri_service" and list jobs (jobs)
def scraper
    url = "https://blockwork.cc/"
    unparsed_page = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    jobs = Array.new
    job_listings = parsed_page.css('div.listingCard')
    job_listings.each do |job_listing|
        job = {
            title: job_listing.css('span.job-title').text,
            company: job_listing.css('span.company').text,
            location: job_listing.css('span.location').text,
            url: "https://blockwork.cc" + job_listing.css('a')[0].attributes["href"].value
        }
       jobs << job
    end
    byebug
end
scraper