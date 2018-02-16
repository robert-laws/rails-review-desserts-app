Rails.application.routes.draw do
  resources :desserts, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  root 'desserts#index'
end
