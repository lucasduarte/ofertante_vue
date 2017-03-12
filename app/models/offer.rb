class Offer < ApplicationRecord
  belongs_to :user
  validates :url, presence: true
  enum status: [:sent, :published, :deleted]
end
