# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

# AdminUser.create!(email: 'colton@admin.com', password: 'password',
# password_confirmation: 'password')
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
Customer.destroy_all
if Rails.env.development?

  5.times do
    cust = Faker::Name.unique.name
    @customer = Customer.create!(
      name: cust,
      number: Faker::PhoneNumber.cell_phone,
      email: Faker::Internet.unique.email(name: cust),
      notes: Faker::Lorem.sentence
    )
  end

  5.times do
    cust = Faker::Name.unique.name
    @customer = Customer.create!(
      name: cust,
      number: Faker::PhoneNumber.cell_phone,
      notes: Faker::Lorem.sentence
    )
  end
end
