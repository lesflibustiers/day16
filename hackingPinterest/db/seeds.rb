# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

2.times do |index|
  User.create!(name: Faker::Name.name, password: Faker::Beer.hop, email: Faker::Internet.email)
end

User.all.each do |user|
  rand(1).times {Pin.create!([image: Faker::LoremPixel.image("50x60"), title: Faker::Lorem.sentence, user_id: user.id])}
end

User.all.each do |user|
  Pin.all.each do |pin|
    rand(1).times {Comment.create!([content: Faker::Lorem.sentence, user_id: user.id, pin_id: pin.id])}
  end
end	
