Rails.application.routes.draw do
  resources :audit_log_entries
  resources :employees
  resources :art_pieces
  resources :artists
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "art_pieces#index"

  resources :art_pieces
  resources :artists
  resources :audit_log_entries
end
