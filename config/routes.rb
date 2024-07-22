Rails.application.routes.draw do
  root "tasks#index"

  get "up" => "rails/health#show", as: :rails_health_check

  resources :tasks do
    member do
      post :toggle
    end
  end
end
