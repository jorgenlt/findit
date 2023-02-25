Rails.application.routes.draw do
  devise_for :users
  root to: "pages#dashboard"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :categories, only: [:show] do
    get '/categories/:id/', to: 'categories#show_sub', as: 'sub'
  end

  resources :posts, only: [:show, :new, :create]
end
