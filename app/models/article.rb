class Article < ActiveRecord::Base
  scope :by_last_created, -> { order(created_at: :desc) }

  validates_presence_of :title
end
