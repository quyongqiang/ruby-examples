require "rubygems"
require "active_record"

class Movie < ActiveRecord::Base
end


movie = Movie.new(1)
movie.title = "Doctor Strangelove"
movie.director = "Stanley Kubrick"


