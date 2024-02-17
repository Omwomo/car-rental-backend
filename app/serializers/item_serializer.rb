class ItemSerializer
  include JSONAPI::Serializer
  attributes :name, :description, :image, :city, :rates_per_day, :rates_per_hour, :availability_status,
             :collision_cover, :mileage, :fuel_type
end
