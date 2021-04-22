# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "Creating movies"
Bookmark.destroy_all
Movie.destroy_all

Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)

puts "Creating lists"

List.destroy_all

f1 = URI.open('https://source.unsplash.com/J39X2xX_8CQ')
l1 = List.new(name: 'Thursdays')
l1.photo.attach(io: f1, filename: 'thriller-image.jpg', content_type: 'image/jpg')
l1.save

f2 = URI.open('https://source.unsplash.com/CiUR8zISX60')
l2 = List.new(name: 'Surfing')
l2.photo.attach(io: f2, filename: 'thursdays-image.jpg', content_type: 'image/jpg')
l2.save

f3 = URI.open('https://source.unsplash.com/Lq6rcifGjOU')
l3 = List.new(name: 'Classics')
l3.photo.attach(io: f3, filename: 'classics-image.jpg', content_type: 'image/jpg')
l3.save

f4 = URI.open('https://source.unsplash.com/orYix9zFUZo')
l4 = List.new(name: 'Girl power')
l4.photo.attach(io: f4, filename: 'girl-image.jpg', content_type: 'image/jpg')
l4.save

f5 = URI.open('https://source.unsplash.com/M8MWjkWS7-c')
l5 = List.new(name: 'Crazy times')
l5.photo.attach(io: f5, filename: 'crazy-image.jpg', content_type: 'image/jpg')
l5.save

f6 = URI.open('https://source.unsplash.com/DijA5f0voGQ')
l6 = List.new(name: 'Adventure')
l6.photo.attach(io: f6, filename: 'adventure-image.jpg', content_type: 'image/jpg')
l6.save

puts "Finished!"
