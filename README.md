
# searchjob
Development of application for job search using web scraping.
Version ruby 2.5.1
Rails 5.2.0

install gems
docker-compose run --rm app bundle install

Create database
docker-compose run --rm app bundle exec rake db:create db:migrate
run application
docker-compose up
Access: http://localhost:3000/