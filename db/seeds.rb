# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# puts 'Cleaning database...'
# Restaurant.destroy_all

# puts 'Creating restaurants...'
# restaurants_data = [
#   { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '555-1234', category: 'chinese' },
#   { name: 'Adriano Pizzeria', address: 'leipzig St 5', phone_number: '555-5678', category: 'italian' },
#   { name: 'Sushi One', address: 'tokyo St 7', phone_number: '555-9876', category: 'japanese' },
#   { name: 'French Bistro', address: 'Pine St 1', phone_number: '555-4321', category: 'french' },
#   { name: 'Belgian Waffles', address: 'berlin St 5', phone_number: '555-8765', category: 'belgian' }
# ]
# restaurants_data.each do |restaurant_data|
#   restaurant = Restaurant.create!(restaurant_data)
#   puts `Created #{restaurant.name}`
# end
# Restaurant.create!(name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '555-1234', category: 'chinese')
# Restaurant.create!(name: 'Adriano Pizzeria', address: 'leipzig St 5', phone_number: '555-5678', category: 'italian')
# Restaurant.create!(name: 'Sushi One', address: 'tokyo St 7', phone_number: '555-9876', category: 'japanese')
# Restaurant.create!(name: 'French Bistro', address: 'Pine St 1', phone_number: '555-4321', category: 'french')
# Restaurant.create!(name: 'Belgian Waffles', address: 'berlin St 5', phone_number: '555-8765', category: 'belgian')
# puts 'Finished!'

require 'faker'

# Clear existing records
Restaurant.destroy_all

# Seed restaurants
5.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
end

puts 'Seed data has been created successfully!'
