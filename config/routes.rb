Rails.application.routes.draw do
  
  devise_for :users
  resources :books
  resources :users, only: [:show,:edit,:update,:index,:create]
  root to: "homes#top"
  get 'homes/about' => 'homes#about', as: 'about'
end
