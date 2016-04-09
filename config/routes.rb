Rails.application.routes.draw do
  root 'welcome#index'

  get 'register' => 'players#new, as: :register'
  get 'logout' => 'sessions#destroy, as: :logout'
  get 'login' => 'sessions#new, as: :login'

  resources :teams
  resources :sports, only: [:create, :new, :show, :destroy]
  resources :positions, only: [:create, :new, :show, :destroy]
  resources :medium
  resources :players

end
