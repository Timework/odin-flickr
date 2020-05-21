Rails.application.routes.draw do
  resources :pictures, only: [:index]
  root 'pictures#index'
end
