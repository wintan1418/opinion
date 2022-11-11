Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'home#index'


  resources :opinions do
    resources :comments
    resources :likes
  end

 
  # Defines the root path route ("/")
  # root "articles#index"
end
