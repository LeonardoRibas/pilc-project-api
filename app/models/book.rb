class Book < ApplicationRecord
  belongs_to :user
  has_many :borrow_requests
  has_many :candidates, through: :borrow_requests, source: :user
  has_many :book_genres
  has_many :genres, through: :book_genres

  validates :title, presence: true
  validates :author, presence: true
end
