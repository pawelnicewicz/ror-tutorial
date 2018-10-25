Rails.application.routes.draw do
  devise_for :users
  resources :events
  root 'homepage#index'
  get 'admin'
end
