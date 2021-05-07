json.extract! book, :id, :user_id, :title, :author, :rewardable, :first_question, :second_question, :third_question
json.url book_url(book, format: :json)
