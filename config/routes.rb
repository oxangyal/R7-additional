Rails.application.routes.draw do
  get 'orders/index'
  get 'orders/show'
  get 'orders/new'
  get 'orders/edit'
  get 'orders/create'
  get 'orders/update'
  get 'orders/destroy'
  root to: 'customers#index'

  resources :customers
  resources :orders

  delete "/customers/customerAndOrders/:id", to: "customers#destroy_with_orders"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
