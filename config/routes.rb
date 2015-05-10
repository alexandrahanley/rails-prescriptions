Rails.application.routes.draw do

  resources :patients do
    resources :prescriptions
  end

  resources :medications

    root "dashboard#index"
  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  delete "signout" => "sessions#destroy", as: :signout
end
