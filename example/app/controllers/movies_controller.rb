class MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end

end
