class OfferSerializer < ActiveModel::Serializer
  attributes :id, :description, :url, :image, :comment, :status, :price, :created_at, :tag_list, :likes_count

  has_one :user

end
