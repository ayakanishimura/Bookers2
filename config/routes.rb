Rails.application.routes.draw do
  root to: 'homes#top'
  get '/home/about', to: 'homes#about'
  devise_for :users
  resources :books, only: [:create, :index, :show, :destroy, :edit, :update]

  resources :users, only: [:show, :edit, :update, :index]

end
