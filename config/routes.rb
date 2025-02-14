Rails.application.routes.draw do
  # get "access/menu"
  # get "access/new"
  # get "access/create"
  # get "access/destroy"
  root "tasks#index"
  # get "categories/index"
  # get "categories/show"
  # get "categories/new"
  # get "categories/edit"
  # get "categories/delete"

  get "menu" => "access#menu"
  get "login" => "access#new"
  delete "logout" => "access#destroy"
  resources :access, controller: "access", only: [ :new, :create, :destroy ] do
    member do
      get :menu
    end
  end

  match "about", to: "main#about", via: :get

  resources :categories do
    member do
      get :delete
    end
  end
  resources :tasks do
    member do
      get :delete
    end
  end

  # get "main/index"
  # get "tasks/index"
  # get "tasks/new"
  # get "tasks/edit"
  # get "tasks/show"
  # get "tasks/delete"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
