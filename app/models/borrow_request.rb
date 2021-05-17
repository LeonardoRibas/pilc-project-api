class BorrowRequest < ApplicationRecord
  before_save :set_owner
  belongs_to :user
  belongs_to :book
end

def set_owner
  self.owner = book.user.id
end
