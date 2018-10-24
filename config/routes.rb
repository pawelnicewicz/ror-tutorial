Rails.application.routes.draw do
  resources :events
  root 'homepage#index'
end
