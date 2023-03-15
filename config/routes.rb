Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  get "home/about" => "homes#about"
  resources :books do 
    resources :post_comments, only: [:create, :destroy]
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
