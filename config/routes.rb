Rails.application.routes.draw do
  resources :user1s
  resources :users
  resources :line_items
  resources :carts
  get 'store/index'

  resources :products

  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  get 'static/Pages'
  
  root "store#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
