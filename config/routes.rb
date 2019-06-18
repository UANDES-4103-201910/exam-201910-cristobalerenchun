Rails.application.routes.draw do
  get 'home_controller/index'
  resources :order_products
  resources :products
  resources :add_shippings
  resources :add_billings
  resources :orders
  devise_for :users
  get 'catalog/index'

  root to: "home_controller#index"
  get '/users/home_controller', to: "home_controller#index"
  get '/home_controller', to: "home_controller#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
