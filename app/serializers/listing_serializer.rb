class ListingSerializer < ActiveModel::Serializer
  attributes :id, :title, :url, :phoneFormatted, :phone, :address, :city, :country, :crossStreet, :postalCode, :state
end
