Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Brain resource routes
  resources :brains do
    # Nested route for new reservations under a specific brain
    resources :reservations, only: [:new]
  end

  # Reservation routes
  resources :reservations, only: [:destroy, :edit, :update] do
    member do
      patch :accept
      patch :decline
    end
  end

  # # Notifications route for the current user
  # get '/users/notifications', to: 'users#index', as: 'user_notifications'

end
