Rails.application.routes.draw do
  resources :desserts, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :stores

  root 'desserts#index'
end
