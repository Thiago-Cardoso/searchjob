require 'ffaker'

30.times do
	Job.create!(
		job_title: FFaker::Job.title,  
    	job_description: FFaker::Lorem.paragraph,
    	published_at: "30/07/2018",
		company_name: FFaker::Company.name,
		locale: FFaker::AddressBR.city,
		)
end