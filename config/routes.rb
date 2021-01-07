Rails.application.routes.draw do
  get 'stars/index'
  get 'stars', to: 'stars#index'
  get 'stars/add'
  post 'stars/add', to: 'stars#create'
  get 'stars/edit/:id', to: 'stars#edit'
  patch 'stars/edit/:id', to: 'stars#update'
  get 'stars/delete/:id', to: 'stars#delete'
  get 'stars/find'
  post 'stars/find'
   
  get 'stars/:id', to: 'stars#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end