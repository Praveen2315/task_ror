Rails.application.routes.draw do

  devise_for :admin_companies
 
  namespace :admin do
      resources :users
      resources :companies

    root to: "users#index"
    end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :companies
  # resources :users

  # Defines the root path route ("/")
  # root "articles#index"
end
