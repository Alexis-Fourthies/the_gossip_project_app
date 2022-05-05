# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10 .times do
    city = City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
    end

    10.times do
        user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence, email: Faker::Internet.email, age: Faker::Number.between(from: 18, to: 99), city: City.all.sample)
    end

    20.times do
        gossip = Gossip.create(title: Faker::Book.title, content: Faker::Lorem.sentence, user: User.all.sample)
    end

    10.times do
        tag = Tag.create(title: Faker::Book.genre)
    end

    3.times do
        private_message = PrivateMessage.create(content: Faker::Lorem.sentence, sender: User.all.sample, recipient: User.all.sample)
    end

    20.times do
        comment = Comment.create(content: Faker::Lorem.sentence, user: User.all.sample, gossip: Gossip.all.sample)
    end

    20.times do
        like = Like.create(user: User.all.sample, gossip: Gossip.all.sample)
    end
