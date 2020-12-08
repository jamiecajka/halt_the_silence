# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  Tag.create(
    tag: Faker::Verb.base
  )
end

10.times do
  Article.create(
    title: Faker::Verb.base,
    body: Faker::Hipster.paragraphs(number: 3),
    author: Faker::GreekPhilosophers.name,
    picture: '/app/assets/images/bidean.png'
  )
end

40.times do
  ArticleTag.create(
    article_id: rand(1..10),
    tag_id: rand(1..20)
  )
end
