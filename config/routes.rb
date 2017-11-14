Rails.application.routes.draw do
  get 'admin/index'

  resources :users
  resources :orders
  resources :line_items
  resources :carts
  get 'store/index', as: 'store_index'

  resources :products

  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  get 'static/Pages'
  
  root "store#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
end
