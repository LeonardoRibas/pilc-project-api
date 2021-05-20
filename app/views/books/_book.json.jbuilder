json.extract! book, :id, :title, :author, :rewardable, :first_question, :second_question, :third_question
json.owner book.user.name
json.genres do
  json.array! book.genres, partial: "genres/genre", as: :genre
end
json.cover book.cover
json.url book_url(book, format: :json)
