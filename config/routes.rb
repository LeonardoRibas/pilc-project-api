Rails.application.routes.draw do
  defaults format: :json do
    resources :genres, only: [:index]
    resources :borrow_requests
    resources :books
    get '/mybooks', to: 'books#mybooks'
    get '/wanted_books', to: 'books#wanted_books'

    resources :users
    get '/user', to: 'users#show_me'
    post 'auth/login', to: 'authentication#login'
  end
end
