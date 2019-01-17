Rails.application.routes.draw do
  resources :approvals
  resources :donations
  resources :students
  resources :belongs_tos
  get 'home/index'
  resources :users
  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
