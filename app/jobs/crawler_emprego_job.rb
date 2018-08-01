class CrawlerEmpregoJob < ApplicationJob
  queue_as :empregojob

  def perform(*args)
    # Do something later
  end
end
