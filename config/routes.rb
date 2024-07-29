Rails.application.routes.draw do
  root "tasks#index"

  get "up" => "rails/health#show", as: :rails_health_check

  resources :tasks do
    member do
      post :toggle
    end
  end

  resources :activity do
    collection do
      post :stream_greeting
    end
  end
end
