Rails.application.routes.draw do
  devise_for :users

  resources :posts, only: [:index, :show, :new, :create]

  # Root
  root to: 'posts#index'
end
