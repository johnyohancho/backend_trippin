Rails.application.routes.draw do
  resources :events, only: [:index, :show, :create, :update, :destroy]
  resources :trips, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :show, :create, :update, :destroy]
  post '/login', to: 'sessions#create', as: 'login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
