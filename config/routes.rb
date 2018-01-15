Rails.application.routes.draw do
  resources :categories
  resources :types
  devise_for :users

  root 'main#home'
  get 'main/home'





  resources :plans
  resources :materials
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
