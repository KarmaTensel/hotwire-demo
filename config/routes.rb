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
      get :buy_now
    end
  end

  resources :carts do
    collection do
      post :add_to_cart
      post :remove_from_cart
    end
  end
end
