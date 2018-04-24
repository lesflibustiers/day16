# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

3.times do |index|
  User.create!(name: Faker::Name.name)
end

User.all.each do |user|
  rand(2).times {Lien.create!([name: Faker::Lorem.sentence, user_id: user.id])}
end

Lien.all.each do |lien|
  rand(2).times {Comment.create!([content: Faker::Lorem.sentence, user_id: lien.user_id, lien_id: lien.id, comment_id: 0])}
end	

Comment.all.each do |comment|
  rand(2).times {Comment.create!([content: Faker::Lorem.sentence, user_id: comment.user_id, lien_id: comment.lien_id, comment_id: comment.id])}
end