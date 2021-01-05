# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(first_name: "Taylor", last_name: "Swift", email: "tswifttest123@gmail.com", password: "hello12345")
User.create(first_name: "Sturgill", last_name: "Simpson", email: "sturgsimpsontest123@gmail.com", password: "hello12345")
User.create(first_name: "Leon", last_name: "Bridges", email: "leonbridgetest@gmail.com", password: "hello12345")

Ebook.create(title: "The Giver of Stars", available_copies: 10)
Ebook.create(title: "Such a Fun Age", available_copies: 10)
Ebook.create(title: "Anne of Green Gables", available_copies: 10)
