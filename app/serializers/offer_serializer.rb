class OfferSerializer < ActiveModel::Serializer
  attributes :id, :description, :url, :image, :comment, :status, :price, :created_at, :tag_list

  has_one :user

end
