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

# Create admin user
admin = User.create(username: 'admin', firstName: 'Admin', lastName: 'User', city: 'AnyCity', email: 'admin@example.com', password: 'password')

# Create regular users
user1 = User.create(username: 'umair_rao', firstName: 'Umair', lastName: 'Rao', city: 'Lahore')
user2 = User.create(username: 'ali_rao', firstName: 'ali', lastName: 'rao', city: 'Karachi')

# Create Items
item1 = Item.create(admin: admin, name: 'BMW', image: 'https://imgd.aeplcdn.com/370x208/n/cw/ec/130591/fronx-exterior-right-front-three-quarter-109.jpeg?isig=0&q=80', description: 'Exquisite design, powerful performance, and unparalleled luxury redefine driving excellence.', city: 'Chicago', financeFee: '20', purchaseFee: '20', totalAmount: '32', apr: '2',duration:'3', adminId: '1')
item2 = Item.create(admin: admin, name: 'Bugatti', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdvfuMwm1p6V4fTWCEb5irnaDB-EdXYJzjTA&usqp=CAU', description: 'Unrivaled speed, precision engineering, and opulent design redefine automotive luxury.', city: 'San Francisco', financeFee: '20', purchaseFee: '20', totalAmount: '32', apr: '2',duration:'3', adminId: '1')
item3 = Item.create(admin: admin, name: 'Honda', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSySr0V2R5ZFfVlTiI6S8IdtIBxX2QW32oFfA&usqp=CAU', description: 'Reliable, efficient, and versatile vehicles, delivering quality and innovation effortlessly.', city: 'Seattle', financeFee: '20', purchaseFee: '20', totalAmount: '32', apr: '2',duration:'3', adminId: '1')

puts 'data added success'