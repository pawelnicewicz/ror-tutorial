Rails.application.routes.draw do
  devise_for :users
  resources :events
  root 'homepage#index'
  as :user do
    get '/admin', to: 'devise/sessions#new'
  end
end
