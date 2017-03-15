class OfferSerializer < ActiveModel::Serializer
  attributes :id, :description, :url, :image, :comment, :status, :price, :created_at

  has_one :user

end
