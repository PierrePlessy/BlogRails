Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'posts#index'
  resources :posts

  post '/posts/:id', to: 'posts#comment', as: 'comment'
  get '/upload', to: 'posts#new', as: 'upload'

  devise_for :users
end
