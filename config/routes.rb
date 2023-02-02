Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  resources :chats
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # root 'static_pages#home'
  root to:"chats#index"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
