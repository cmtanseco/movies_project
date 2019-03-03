class Actor < ApplicationRecord
  validates :name, :networth, presence: true
  validates :networth, numericality: { only_integer: true }

  has_many :movie_actors
  has_many :movies, through: :movie_actors
end
