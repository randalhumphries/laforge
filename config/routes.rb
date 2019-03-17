Rails.application.routes.draw do
  root 'clients#index'
  
  resources :company
  resources :clients
  resources :contacts
  devise_for :users
end