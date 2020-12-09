Rails.application.routes.draw do
  root to: 'homes#top'
  get '/home/about', to: 'homes#about'
  devise_for :users
  resources :books do
    resource :book_comments, only: [:create, :destroy]
  end

  resources :users, only: [:show, :edit, :update, :index]

end
