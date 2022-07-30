Rails.application.routes.draw do
  resources :restaurants 
  resources :reviews
  
  devise_for :users
  root "reviews#index"
end
