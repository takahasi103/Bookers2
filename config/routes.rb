Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  resources :users, onry: [:index, :show, :edit]
  get "homes/about"
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
