require 'ffaker'

30.times do
	Job.create!(
		title: FFaker::Job.title,  
    	description: FFaker::Lorem.paragraph,
    	published_at: "30/07/2018",
		company: FFaker::Company.name,
		location: FFaker::AddressBR.city,
		url: FFaker::Internet.http_url,
		)
end