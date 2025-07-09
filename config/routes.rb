Rails.application.routes.draw do
  # Admin and authentication routes
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # Customer-facing routes
  resources :customers, only: [:index]

  # Define the root path route ("/") — optional
  # You can point this to your public customer list or another controller
  # root "customers#index"

  # Reveal health status on /up
  get "up" => "rails/health#show", as: :rails_health_check

  # Optional: PWA support
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
end