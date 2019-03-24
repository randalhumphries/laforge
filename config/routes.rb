Rails.application.routes.draw do
  root 'clients#index'
  
  resources :company
  resources :clients do
    resources :contacts
  end
  devise_for :users
end