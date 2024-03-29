Rails.application.routes.draw do
  resources :devices
  resources :stores
  get 'home/index'

  devise_for :users

  # Redirige a los usuarios a home/index después de iniciar sesión correctamente
  authenticated :user do
    root 'home#index', as: :authenticated_root
  end

  root to: redirect('/users/sign_in'), unless: -> { user_signed_in? }


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
