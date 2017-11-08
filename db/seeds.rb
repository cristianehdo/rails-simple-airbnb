# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
flats_attributes = [
  {
    name: 'Light & Spacious Garden Flat London',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 75,
    number_of_guests: 4
  },
  {
    name: 'Spacious Rooftop Flat London',
    address: '19 Old Street N2 1DT',
    description: 'A rooftop flat with a double bedroom, open plan living area, and a modern conservatory',
    price_per_night: 95,
    number_of_guests: 2
  },
  {
    name: 'Cozy Flat London',
    address: '22 Ramsted Heaf Road London T5 1DT',
    description: 'A lovely cozy space  with a large bedroom, open plan living area and modern kicthen',
    price_per_night: 55,
    number_of_guests: 2
  }
]
Flat.create!(flats_attributes)
puts 'Finished!'
