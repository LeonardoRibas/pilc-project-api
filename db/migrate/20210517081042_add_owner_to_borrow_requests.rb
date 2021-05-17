class AddOwnerToBorrowRequests < ActiveRecord::Migration[6.1]
  def change
    add_column :borrow_requests, :owner, :integer
  end
end
