Rails.application.routes.draw do


  get "signup" => "signup#new"
  post "signup" => "signup#create"
  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "destroy_login" => "sessions#destroy"

  get "dashboard" => "dashboard#index"
  get "secret" => "dashboard#show"

  root "sessions#new"
end
