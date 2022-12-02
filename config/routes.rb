Rails.application.routes.draw do
  get 'photos/new'
  get 'users/index'
  devise_for :users
  # Defines the root path route ("/")
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :projects do
    resources :photos
    resources :pdfs, only: %i[new create]
      collection do
        get 'my_projects', to: 'projects#my_projects', as: 'my'
      end
    resources :users, only: %i[index show]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
