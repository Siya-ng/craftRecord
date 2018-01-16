Rails.application.routes.draw do
  resources :categories
  resources :types
  devise_for :users

  root 'main#home'
  get 'main/home'





  resources :plans do
    resources :photos, module: :plans
    resources :projects, module: :plans
  end
  resources :materials do
    resources :photos, module: :materials
  end

  get '/projects/ongoing', to: 'project#ongoing'
  get '/projects/completed', to: 'project#completed'
  resources :projects do
    resources :photos, module: :projects
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
