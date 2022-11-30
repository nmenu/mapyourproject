Rails.application.routes.draw do
  get 'users/index'
  devise_for :users
  # Defines the root path route ("/")
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :projects, only: %i[new create index]
  resources :users, only: %i[index show]
end
