class AdminItemSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :description, :city, :rates_per_day, :rates_per_hour, :availability_status,
             :collision_cover, :mileage, :fuel_type, :created_at, :updated_at,
             :image, :reserving_ids, :reserving_usernames

  attribute :reserving_ids do |object|
    object.reservations.pluck(:id).join(',')
  end

  attribute :reserving_usernames do |object|
    object.reservations.includes(:customer).pluck('users.username').join(',')
  end
end
