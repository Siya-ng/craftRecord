Rails.application.routes.draw do
  devise_for :users

  get 'main/index'
  get 'main/about'

  root 'main#index'
  get 'about' => 'main#about'



  resources :plan
  resources :material
  resources :project
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
