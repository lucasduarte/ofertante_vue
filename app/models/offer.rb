class Offer < ApplicationRecord
  belongs_to :user
  has_many :likes
  
  validates :url, presence: true
  enum status: [:sent, :published, :deleted]

  acts_as_taggable_on :tags
end
