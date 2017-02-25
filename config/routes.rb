Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboard#index'

  # Angular test
  get 'angular_test', to: 'angular_test#index'

  # Customer resource
  resources :customers, only: [ :index ] 
end
