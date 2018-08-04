require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new

scheduler.every '30s' do
  CrawlerEmpregoJob.perform_now
end