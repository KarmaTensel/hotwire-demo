Rails.application.routes.draw do
  root "tasks#index"

  get "up" => "rails/health#show", as: :rails_health_check

  resources :tasks
end
