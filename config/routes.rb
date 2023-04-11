Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  get "home/about" => "homes#about"
  resources :books do 
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end 
  get '/search', to: 'searches#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
