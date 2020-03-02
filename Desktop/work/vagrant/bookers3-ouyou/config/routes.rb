Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  resources :likes, only: [:destroy]
  post 'likes/:id', to: "likes#create"
  resources :comments
  root 'home#top'
  get 'home/about'
end