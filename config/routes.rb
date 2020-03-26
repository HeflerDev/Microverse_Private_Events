Rails.application.routes.draw do
  get '/host', to:'events#new'
  post'/host', to:'events#create'
  get 'events/show'
  get 'events_home', to:'events#index'
  get 'sessions/new'
  get    '/signup',   to: 'users#new'
  post   '/signup',   to: 'users#create'
  resources :users, only:['new','create','show']
  resources :events, only:['new','create','show']
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
