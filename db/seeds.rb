# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Place Verte',
    address:      '20 Rue oberkampf',
    phone_number:      '01 26 77 34 44',
    category:           'french'
  },
  {
    name:         'Berliner Kebab',
    address:      '40 Rue oberkampf',
    phone_number:      '01 77 44 26 77',
    category:           'belgian'
  },
  {
    name:         'Mama Roma',
    address:      '15 Rue oberkampf',
    phone_number:      '01 34 77 26 77',
    category:           'italian'
  },
  {
    name:         'Rouleaux de Printemps',
    address:      '25 Rue oberkampf',
    phone_number:      '01 34 44 34 77',
    category:           'chinese'
  },
  {
    name:         'Mastuko',
    address:      '50 Rue oberkampf',
    phone_number:      '01 26 44 26 77',
    category:           'japanese'
  }
]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'
