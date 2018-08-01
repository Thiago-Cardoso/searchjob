class CrawlerEmpregoJob < ApplicationJob
  queue_as :empregojob

  def perform(page)
    # Do something later
    CrawlerServiceEmprego.new(page).crawlerEmpregos
  end
end

