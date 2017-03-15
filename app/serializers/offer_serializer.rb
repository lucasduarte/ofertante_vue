class OfferSerializer < ActiveModel::Serializer
  attributes :id, :description, :url, :image, :comment, :status, :price

  has_one :user

end
