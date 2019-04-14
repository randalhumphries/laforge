Rails.application.routes.draw do
  root 'clients#index'
  
  resources :company
  resources :clients do
    resources :contacts
    resources :locations
    resources :accounts
    resources :networks
  end
  devise_for :users
end