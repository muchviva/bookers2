Rails.application.routes.draw do
  devise_for :users
  # get 'homes/top'
  root to: "homes#top"
  
  resources :books, only: [:new, :create, :edit, :update, :index, :show, :destroy]
  resources :users, only: [:show, :index, :edit, :update]
  
  get '/home/about' => "homes#about", as:'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
