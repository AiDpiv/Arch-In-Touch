Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
root "static_pages#home"
  get 'static_pages/home'
  get 'static_pages/:id', to: 'static_pages#show'
  # get 'login', to: 'static_pages#login', as: 'login'
  # get "administrate", to: "static_pages#administrate", as: "administrate"
  get 'persons/profile', as: 'user_root'
end
