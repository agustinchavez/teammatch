  Rails.application.routes.draw do
  root 'welcome#index'
  get '/welcome/edit', :to => 'welcome#edit'
  post '/search', :to => 'welcome#search'

  get 'register' => 'players#new, as: :register'
  get 'logout' => 'sessions#destroy, as: :logout'

  resources :teams
  post 'teamss/search', :to => 'teams#search'
  get 'media/:id', :to => 'teams#media'
  resources :sports, only: [:create, :new, :show, :destroy]
  resources :positions, only: [:create, :new, :show, :destroy]
  resources :medium
  resources :players
  post 'players/search', :to => 'players#search'
  get 'players/:id/email', :to => 'players#email'

  get '/login', :to => 'sessions#new', as: :login
  get 'auth/:provider', :to => 'sessions#new', as: :oauth_login
  get '/auth/:provider/callback', to: 'players#create'
  get '/auth/failure', to: 'sessions#failure'
end
