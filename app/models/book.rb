class Book < ApplicationRecord
  belongs_to :user
  has_many :borrow_requests
  has_many :users, through: :borrow_requests

  validates :title, presence: true
  validates :author, presence: true
  validates :rewardable, presence: true
end
