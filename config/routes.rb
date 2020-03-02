Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  resources :favorites, only: [:create,:destroy]
  post 'favorites/:id', to: "favorites#create"
  resources :book_comments, only: [:create,:destroy]
  root 'home#top'
  get 'home/about'
end