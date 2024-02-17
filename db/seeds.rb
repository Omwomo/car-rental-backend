# frozen_string_literal: true
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create Users
user1 = User.create(email: 'b@gmail.com', username: 'jdoe123', first_name: 'John', last_name: 'Doe', city: 'Miami')
user2 = User.create(email: 'c@gmail.com', username: 'janesmith89', first_name: 'Jane', last_name: 'Smith', city: 'San Francisco')

# Create Items
item1 = Item.create(admin: user1, name: 'Item 1', image: 'image_data_1', description: 'Description 1', city: 'Chicago', rates_per_day: 50, rates_per_hour: 10, availability_status: true, mileage: '10000 miles', fuel_type: 'Petrol', collision_cover: false)
item2 = Item.create(admin: user1, name: 'Item 2', image: 'image_data_2', description: 'Description 2', city: 'Los Angeles', rates_per_day: 60, rates_per_hour: 12, availability_status: true, mileage: '12000 miles', fuel_type: 'Diesel', collision_cover: true)
item3 = Item.create(admin: user2, name: 'Item 3', image: 'image_data_3', description: 'Description 3', city: 'Seattle', rates_per_day: 45, rates_per_hour: 8, availability_status: true, mileage: '8000 miles', fuel_type: 'Electric', collision_cover: false)

# Create Reservations
reservation1 = Reservation.create(customer: user2, reserve_for_use_date: Date.today, city: 'San Francisco')
reservation2 = Reservation.create(customer: user1, reserve_for_use_date: Date.tomorrow, city: 'Miami')

# Create ReservationItems
ReservationItem.create(reservation: reservation1, item: item1)
ReservationItem.create(reservation: reservation1, item: item2)
ReservationItem.create(reservation: reservation2, item: item3)
puts "seeds data created successfully"
