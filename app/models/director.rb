class Director < ApplicationRecord
  validates :name, :networth, presence: true
  validates :networth, numericality: { only_integer: true }

  has_many :movies
end
