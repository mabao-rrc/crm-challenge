Rails.application.routes.draw do
  # ---------------------------------------
  # CUSTOM ROUTES FOR CUSTOMER FINDERS
  # ---------------------------------------

  # 1. Route for the index action ("/") that shows all customers
  root "customers#index"

  # 2. Route for the alphabetized action ("/customers/alphabetized")
  get "customers/alphabetized", to: "customers#alphabetized", as: :customers_alphabetized

  # 3. Route for the missing_email action ("/customers/missing_email")
  get "customers/missing_email", to: "customers#missing_email", as: :customers_missing_email

  # ---------------------------------------
  # DEFAULT DEVISE & ACTIVE ADMIN ROUTES
  # ---------------------------------------

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # Other PWA or API routes (optional)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
end
