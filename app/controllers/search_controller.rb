class SearchController < ApplicationController
  def results
    @query = params[:q]
    @movies = Movie.where('name LIKE ?', "%#{@query}%")
    @directors = Director.where('name LIKE ?', "%#{@query}%")
    @actors = Actor.where('name LIKE ?', "%#{@query}%")
  end
end
