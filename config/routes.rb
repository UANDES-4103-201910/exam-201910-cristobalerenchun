Rails.application.routes.draw do
  resources :order_products
  resources :products
  resources :add_shippings
  resources :add_billings
  resources :orders
  devise_for :users
  get 'catalog/index'

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
