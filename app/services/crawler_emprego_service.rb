class CrawlerEmpregoService
    def initialize(page)
        @page = page
    end

    def call
        # doc = Nokogiri::HTML(open(@scrapper.url ))
        # items = doc.css(".s-item-container")
        # items.each do |item|
        #   Product.create!(
        #       title: item.css(".s-access-title").text.strip,
        #       price: item.css(".s-price").text.to_d,
        #       rating: item.css("span+ .a-text-normal").text.to_f)
        # end     
           
        parsed_page = Nokogiri::HTML(@page)
        # jobs = Array.new
        job_listings = parsed_page.css('div.descricao')
        job_listings.each do |job_listing|
            Job.create!(
                title: job_listing.css('a')[0].text,
                company: job_listing.css('span.nome-empresa').text,
                location: job_listing.css('span.cidade-estado').text,
                published_at: job_listing.css('span.publicado').text,
                description: job_listing.css('p')[0].text,
                url:  job_listing.css('a')[0].attributes["href"].value)
        end      
            
            #byebug
            
        #formating the rigth way the job hash before insert in array of hashs jobs

        # #Clean the description text take away unnecessary spaces and \n characters
        # job[:title] = job.values[0].gsub("\n", ' ').squeeze(' ').strip()
        # job[:company] = job.values[1].gsub("\n", ' ').squeeze(' ').strip()
        # job[:location] = job.values[2].gsub("\n", ' ').squeeze(' ').strip()
        
        # #Doesn't need clean
        # job[:published_at] = job.values[3]

        # #Clean the description text take away unnecessary spaces and \n characters
        # job[:description] = job.values[4].gsub("\n", ' ').squeeze(' ').strip()

        # #Strip the words "Leia mais" in the end of the description job
        # substr = "Leia mais"
        # job[:description] = job[:description].gsub(substr, "").strip()

        # job[:url] = job.values[5]

        # #Add job hash to jobs array of hashs
        # @jobs = job

        # #percorre e salva no bd
        # @jobs.each do |job|
        #   #  job.save
            
        #    #job.save
        # end
    end
    
    # #get the first and second job of the page
    # return @jobs.take(2)
    #     #
    # end
    # byebug
end