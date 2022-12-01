Rails.application.routes.draw do
  get 'photos/new'
  get 'users/index'
  devise_for :users
  # Defines the root path route ("/")
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :projects, only: %i[new create index show] do
    resources :photos
  end
  resources :users, only: %i[index show]
end
