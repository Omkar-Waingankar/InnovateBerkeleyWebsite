Rails.application.routes.draw do
  get '/signup', to: 'signup#index'
  devise_for :users
  get '/login', to: 'login#index'
  root 'home#index'
  get '/', to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
