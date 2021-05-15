Rails.application.routes.draw do
  defaults format: :json do
    resources :genres, only: [:index]
    resources :borrow_requests
    resources :books
    resources :users
    post 'auth/login', to: 'authentication#login'
  end
end
