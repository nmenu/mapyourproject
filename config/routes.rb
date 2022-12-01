Rails.application.routes.draw do
  devise_for :users
  # Defines the root path route ("/")
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :projects do

    collection do
      get 'my_projects', to: 'projects#my_projects', as: 'my'
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
