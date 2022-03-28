require 'json'
require 'open-uri'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb

url = 'http://tmdb.lewagon.com/movie/top_rated'
movies = URI.open(url).read
hash = JSON.parse(movies)
hash['results'].each do |movie|
  Movie.create(title: movie['title'], overview: movie['overview'], poster_url: movie['poster_url'], rating: movie['rating'])
end
