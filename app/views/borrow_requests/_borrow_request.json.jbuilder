json.extract! borrow_request, :id, :user_id, :book_id
json.url borrow_request_url(borrow_request, format: :json)
