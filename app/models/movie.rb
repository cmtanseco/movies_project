class Movie < ApplicationRecord
  belongs_to :director
  has_many :movie_actors
  has_many :actors, through: :movie_actors

  validates :name, presence: true
  validates :budget, :worldwide_gross, numericality: { only_integer: true }
end
