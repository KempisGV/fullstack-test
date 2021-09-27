Rails.application.routes.draw do
  resources :categories
  resources :stores
  resources :products
  get 'home/stores'
  get 'home/products'
  get 'home/categories'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
