Rails.application.routes.draw do

  root to: "restaurants#index"

  resources :restaurants, except: [:update, :edit, :destroy] do
    resources :reviews, only: [:new, :create]
  end

end
