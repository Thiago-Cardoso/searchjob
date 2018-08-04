class CrawlerProfissionaisJob < ApplicationJob
  queue_as :profissionaisjob

  def perform(page)
     #Do something later
     CrawlerProfissionaisService.new(page).call
     #byebug
  end
end
