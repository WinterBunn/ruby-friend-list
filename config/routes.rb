Rails.application.routes.draw do
  # ---LAST EXCERCISE ROUTES---
  resources :friends #this translates to all the CRUD routes
  get 'home/about'
  #root 'home#index'
  # ---END OF LAST EXCERCISE ROUTES---
  root 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'about', to: 'pages#about'
  get 'signup', to: 'users#new'
  resources :users, except: [:new] 
  resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :categories, except: [:destroy]
end
