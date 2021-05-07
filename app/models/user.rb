class User < ApplicationRecord
  has_secure_password
  has_many :books
  has_many :borrow_requests
  has_many :books, through: :borrow_requests

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { minimum: 6 }
  validates :name, presence: true
  validates :phone, presence: true
end
