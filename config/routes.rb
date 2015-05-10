Rails.application.routes.draw do

  resources :patients do
    resources :prescriptions
  end

    root "dashboard#index"
  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  delete "signout" => "sessions#destroy", as: :signout
end
