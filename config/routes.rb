Rails.application.routes.draw do
  resources :powers, only: [:index, :show]
  resources :heroines, only: [:index, :show]
  resources :heroine_powers, only: [:new, :create]
end
