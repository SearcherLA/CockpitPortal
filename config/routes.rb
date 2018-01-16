Rails.application.routes.draw do
  resources :solution_architects
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :teams
  resources :users, only: [:show]

  root to: 'welcome#index'
end
