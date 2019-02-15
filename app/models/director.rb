class Director < ApplicationRecord
  has_many :movies

  validates :name, :networth, presence: true
end
