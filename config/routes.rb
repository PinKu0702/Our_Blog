Rails.application.routes.draw do

  resources :articles, only: [:index,:new,:create,:show,:edit,:update,:destroy] do
  #get 'articles', to: 'articles#index'
 resources :comments,only:[:create]
 end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/hello', to: 'hello#index'
  get '/bonjour',to: 'bonjour#index'

end
