Rails.application.routes.draw do
  root "main#index"
  # get "categories/index"
  # get "categories/show"
  # get "categories/new"
  # get "categories/edit"
  # get "categories/delete"

  match "about", to: "main#about", via: :get
  match "hello", to: "main#hello", via: :get

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
