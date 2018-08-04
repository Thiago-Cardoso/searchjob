class Job < ApplicationRecord
    include PgSearch
    pg_search_scope :search, against: [:title, :description, :company]
end
