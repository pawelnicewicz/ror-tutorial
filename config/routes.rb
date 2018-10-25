Rails.application.routes.draw do
  devise_for :users
  resources :events
  root 'events#index', as: :homepage
  as :user do
    get '/admin', to: 'devise/sessions#new'
  end
end
