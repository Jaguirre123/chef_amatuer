Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#show', page: 'welcome'
  resources :users, only: [:new, :create, :index, :show]
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  resources :recipes do
    resources :steps, shallow: true, except: [:new]
    resources :comments, shallow: true, only: [:create, :destroy]
  end
end
