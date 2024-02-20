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

user = User.new(
  email:  's@g.c', #ENV['SUPER_ADMIN_EMAIL'],
  username: 's_admin', #ENV['SUPER_ADMIN_USERNAME'],
  first_name: 'Stanley', #ENV['SUPER_ADMIN_FIRST_NAME'],
  last_name: 'Osagie' #ENV['SUPER_ADMIN_LAST_NAME']
)

user.password = '123456' #ENV['SUPER_ADMIN_PASSWORD']
user.password_confirmation = '123456' #ENV['SUPER_ADMIN_PASSWORD']
user.save