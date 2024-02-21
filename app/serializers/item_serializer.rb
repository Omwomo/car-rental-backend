class ItemSerializer
  include JSONAPI::Serializer
  attributes :name, :description, :image, :city, :financeFee, :totalAmount, :purchaseFee, :duration, :apr
end
