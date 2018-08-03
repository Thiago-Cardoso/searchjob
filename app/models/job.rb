class Job < ApplicationRecord
  include PgSearch
  multisearchable against: [:title]
end
