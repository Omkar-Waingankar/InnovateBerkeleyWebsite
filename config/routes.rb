Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  root 'home#index'
  get '/welcome', to: 'home#confirmation_page'
  get '/participants', to: 'participants#index'
  get '/:id', to: 'users#show'
  get '/users/edit_profile', to: 'users#edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
