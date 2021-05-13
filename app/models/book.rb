class Book < ApplicationRecord
  belongs_to :user
  has_many :borrow_requests
  has_many :users, through: :borrow_requests
  has_many :book_genres
  has_many :genres, through: :book_genres

  validates :title, presence: true
  validates :author, presence: true
end
