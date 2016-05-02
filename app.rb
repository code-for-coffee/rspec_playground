require 'bundler'
Bundler.require

get '/' do
  @movie = Movie.new
  @movie.to_hash.to_json
end
