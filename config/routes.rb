Rails.application.routes.draw do
  # ---LAST EXCERCISE ROUTES---
  resources :friends #this translates to all the CRUD routes
  get 'home/about'
  #root 'home#index'
  # ---END OF LAST EXCERCISE ROUTES---
  root 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'about', to: 'pages#about'
  resources :articles
end
