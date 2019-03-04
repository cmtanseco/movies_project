class MoviesController < ApplicationController
  # GET /movies
  def index
    @movies = Movie.order(:name)
  end

  # GET /movies/:id
  def show
    @movie = Movie.find(params[:id])
  end
end
