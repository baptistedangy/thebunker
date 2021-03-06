Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :bunkers do
      resources :bookings, only: [:new, :create]
      resources :reviews, only: [:new, :create]
    end
    resources :bookings, only: [:show, :edit, :update, :destroy]
      # member do
      #   patch :accepted
      #   patch :refused
      get 'dashboard', to: 'pages#dashboard'
      end
    # end
    # resources :pages
# end

