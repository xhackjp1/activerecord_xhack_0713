# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Faker::Config.random = Random.new(13)
50.times do |i|
    Author.create(
        name: Faker::Book.author, 
        country: Faker::Address.country,
    )
    Genre.create(name: Faker::Artist.name)
    Publisher.create(name: Faker::Company.name)
    Book.create(
        title: Faker::Book.title, 
        isbn: Faker::Company.bs,
        author: Author.all.sample,
        publisher: Publisher.all.sample,
    )
end