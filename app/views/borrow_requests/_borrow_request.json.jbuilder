json.extract! borrow_request, :id
json.borrower borrow_request.user.name
json.book borrow_request.book.title
json.owner borrow_request.book.user.name
json.url borrow_request_url(borrow_request, format: :json)
