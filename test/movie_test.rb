require 'json'
require 'rainbow'
require 'httparty'
require './Movie' # if we run 'rspec test/movie_test.rb', rspec looks for movie in the root folder
require 'rspec'

describe Movie do
  it "should return a hash" do
    Movie.new.to_hash.class.should == Hash
  end

  it "should be Top Gun" do
    @tg = Movie.new.to_hash
    @tg["Title"].should == "Top Gun"
  end

  # verify the year == 1986
  # verify the rating == "PG"
end
