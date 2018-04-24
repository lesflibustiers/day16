# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do |index|
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, user_name: Faker::DragonBall.unique.character, email_adress: Faker::Internet.unique.email, password: Faker::Beer.unique.hop)
end

10.times do |index|
  Article.create!(title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph, description: Faker::Lorem.paragraph)
end