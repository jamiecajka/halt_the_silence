# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

2.times do
  Post.create(
    title: Faker::Hacker.say_something_smart,
    body: Faker::Hipster.paragraphs(number: 5, supplemental: true),
    author: Faker::Ancient.primordial,
    catagory: 'guest'
  )
end

2.times do
  Post.create(
    title: Faker::Hacker.say_something_smart,
    body: Faker::Hipster.paragraphs(number: 5, supplemental: true),
    author: Faker::Ancient.primordial,
    catagory: 'other'
  )
end

6.times do
  Post.create(
    title: Faker::Hacker.say_something_smart,
    body: Faker::Hipster.paragraphs(number: 5, supplemental: true),
    author: Faker::Ancient.primordial,
    catagory: 'normal'
  )
end

40.times do
  PostTag.create(
    post_id: rand(1..10),
    tag_id: rand(1..20)
  )
end
