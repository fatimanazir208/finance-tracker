Rails.application.routes.draw do
  resources :user_stocks, only: [:create, :destroy]
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'my_friends', to: 'users#my_friends'
  root to: 'welcome#index'
  devise_for :users
  get 'search_stock', to: 'stocks#search'
  get 'search_friend', to: 'users#search'
  resources :friendships, only: [:create, :destroy]
  resources :users, only: [:show]
end
