# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do |index|
  User.create!(name: Faker::Name.name)
  User.create!(password: Faker::Beer.hop)
  User.create!(email: Faker::Internet.email)
end

10.times do |index|
  Comment.create!(content: Faker::Lorem.sentence)
end	

10.times do |index|
  Pin.create!(image: Faker::LoremPixel.image("50x60"))
  Pin.create!(title: Faker::Lorem.sentence)
end