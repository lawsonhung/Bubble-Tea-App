Rails.application.routes.draw do
  resources :orders
  get 'customers/index'
  get 'customers/show'
  get 'customers/new'
  get 'customers/create'
  get 'customers/edit'
  get 'customers/update'
  get 'customers/destroy'
  get 'bubble_teas/index'
  get 'bubble_teas/show'
  get 'bubble_teas/new'
  get 'bubble_teas/create'
  get 'bubble_teas/edit'
  get 'bubble_teas/update'
  get 'bubble_teas/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bubble_teas
  resources :customers
  resources :orders
  root 'orders#new'
end
