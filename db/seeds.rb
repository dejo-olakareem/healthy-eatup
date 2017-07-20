# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Creation of User story

require 'faker'
User.destroy_all
Purchase.destroy_all
Produce.destroy_all
 20.times do |number|
 	User.create(name: Faker::Name.name, email: "#{number}@email.com", password: "password",phone_number: Faker::PhoneNumber.cell_phone)
 end

users = User.all



15.times do
	Produce.create(name: Faker::Food.ingredient,price: Faker::Number.decimal(2),farmer_id: users.sample)
end

produces = Produce.all

15.times do
	Purchase.create(produce_id: produces.sample, user_id: users.sample)
end

