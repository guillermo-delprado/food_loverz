Rails.application.routes.draw do
  resources :restaurants 
  resources :reviews do
    resources :comments
  end
  
  devise_for :users
  root "reviews#index"
end
