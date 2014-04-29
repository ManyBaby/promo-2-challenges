require './config/application'
require './models/user'
require 'faker'

# Seed you database with recipe data from marmiton
puts "Seeding database..."

# creates users with the Faker Gem

User.destroy_all
Post.destroy_all

5.times  do
  User.create(Faker::Name.name, Faker::Internet.email)

    3.times  do
      Post.create(Faker::Lorem.sentence(4), date: Time.now,
        source_url: Faker::Internet.url, rating: rand(10))
    end

end