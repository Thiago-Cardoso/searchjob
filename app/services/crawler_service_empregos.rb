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
                description: job_listing.css('p')[0].text,
                url:  job_listing.css('a')[0].attributes["href"].value
            }
            #byebug
            
        #formating the rigth way the job hash before insert in array of hashs jobs

        #Clean the description text take away unnecessary spaces and \n characters
        job[:title] = job.values[0].gsub("\n", ' ').squeeze(' ').strip()
        job[:company] = job.values[1].gsub("\n", ' ').squeeze(' ').strip()
        job[:location] = job.values[2].gsub("\n", ' ').squeeze(' ').strip()
        
        #Doesn't need clean
        job[:published_at] = job.values[3]

        #Clean the description text take away unnecessary spaces and \n characters
        job[:description] = job.values[4].gsub("\n", ' ').squeeze(' ').strip()

        #Strip the words "Leia mais" in the end of the description job
        substr = "Leia mais"
        job[:description] = job[:description].gsub(substr, "").strip()

        job[:url] = job.values[5]

        #Add job hash to jobs array of hashs
        jobs << job
        end
    
    #get the first and second job of the page
    return jobs.take(2)
        #byebug
    end
end