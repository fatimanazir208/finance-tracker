Rails.application.routes.draw do
  get 'my_portfolio', to: 'users#my_portfolio'
  root to: 'welcome#index'
  devise_for :users
  get 'search_stock', to: 'stocks#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
