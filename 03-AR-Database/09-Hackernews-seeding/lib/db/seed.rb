require_relative "../config/application"
require_relative "../models/post"
require_relative "../models/user"
require_relative "../db/scraper"

# Seed you database with post data from hacker news
# And fake users using Faker gem

puts "Seeding database..."

#TODO: Your code goes here
# 1. create fake users
users = []
5.times  do
users << User.create(name: Faker::Name.name, email: Faker::Internet.email)
end

# 2. Scrape news from https://news.ycombinator.com/ and associate posts to your existing users

posts = ScraperHackerNews.new.scrap

posts.each do |post|
  users.sample.posts.create(post)
end

