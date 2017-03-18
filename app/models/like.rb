class Like < ApplicationRecord
  belongs_to :user
  belongs_to :offer, :counter_cache => true

  validates_uniqueness_of :offer_id, scope: :user_id
end
