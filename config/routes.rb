Rails.application.routes.draw do
  root to: 'events#index'
  get 'static_pages/secret'
  devise_for :users
  resources :events
  resources :attendances
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
