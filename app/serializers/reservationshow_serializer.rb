class ReservationshowSerializer
  include JSONAPI::Serializer
  attributes :id, :customer_id, :reserveForUseDate, :created_at, :updated_at
end
