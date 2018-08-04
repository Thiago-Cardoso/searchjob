class CrawlerProfissionaisJob < ApplicationJob
  queue_as :profissionaisjob

  def perform(page2)
     #Do something later
     CrawlerProfissionaisService.new(page2).call
     #byebug
  end
end
