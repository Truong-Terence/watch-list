require 'json'
require 'open-uri'
require_relative '../app/models/movie'

url = 'http://tmdb.lewagon.com/movie/top_rated'
movie_serialized = URI.open(url).read
movies = JSON.parse(movie_serialized)

puts 'Creating Movies [...]'
movies["results"].each do |result|
  movie = Movie.new(
    title: result["title"],
    overview: result["overview"],
    rating: result["vote_average"],
    poster_url: result["poster_path"]
  )
  movie.save
end
puts 'Movies are added !'
