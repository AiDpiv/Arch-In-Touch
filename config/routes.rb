Rails.application.routes.draw do
  get 'abouts/home'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
root "projects#home"
# root "abouts#home"
  get 'projects/home'
  get 'abouts/home'
  get 'project/:id', to: 'projects#show'
  get 'persons/profile', as: 'user_root'
end
