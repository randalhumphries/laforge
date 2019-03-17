Rails.application.routes.draw do
  root 'company#index'
  
  resources :company
  resources :clients
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
