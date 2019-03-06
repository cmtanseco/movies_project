class DirectorsController < ApplicationController
  def index
    @directors = Director.order(:name)
  end

  def show
    @director = Director.find(params[:id])
  end
end
