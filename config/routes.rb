require "sidekiq/web"


Rails.application.routes.draw do
  mount Sidekiq::Web => "/sidekiq"
  resources :restaurants 
  resources :reviews do
    resources :comments
  end
  
  devise_for :users
  root "reviews#index"
end
