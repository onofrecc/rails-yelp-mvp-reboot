# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Deleting all restaurant record in the database...'

Restaurant.destroy_all

puts 'Creating 5 restaurants...'

Restaurant.create(
  [
    {
      name: 'gringos',
      address: 'amsterdam',
      category: 'belgian',
      phone_number: '128765634'
    },
    {
      name: 'paelleros',
      address: 'valencia',
      category: 'french',
      phone_number: '178369871'
    },
    {
      name: 'yakuza',
      address: 'osaka',
      category: 'japanese',
      phone_number: '178236745'
    },
    {
      name: 'pennegrosso',
      address: 'via rome',
      category: 'italian',
      phone_number: '198645321'
    },
    {
      name: 'henduodemien',
      address: 'chinese',
      category: 'chinese',
      phone_number: '178349654'
    }
  ]
)

puts '5 restaurants created'

puts 'Done! Go ahead coding!'
