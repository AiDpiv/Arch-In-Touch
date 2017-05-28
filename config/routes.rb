Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
root "projects#home"
  get 'projects/home'
  get 'project/:id', to: 'projects#show'
  get 'persons/profile', as: 'user_root'
end
