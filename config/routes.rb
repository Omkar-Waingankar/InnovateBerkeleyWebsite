Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }, :path => "users", :path_names => {:sign_up => "register"}
  
  devise_scope :user do
    get '/users/y95aaxev', to: 'registrations#new'
  end

  root 'home#index'
  get '/welcome', to: 'home#confirmation_page'
  get '/participants', to: 'participants#index'
  get '/team', to: 'home#team'
  get '/:id', to: 'users#show'
  get '/users/edit_profile', to: 'users#edit'
  get '/users/change_picture', to: 'users#change_picture'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
