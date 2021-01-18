Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"

  resources :prototypes, only: [:new, :create, :new, :show, :edit, :update, :destroy] do
  end

  resources :prototype do
    resources :comments, only: :create
  end

  resources :users, only: :show
end