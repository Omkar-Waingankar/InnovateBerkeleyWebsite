Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  get 'team' => 'pages#team'
  get 'sponsors' => 'pages#sponsors'
  get 'faq' => 'pages#faq'
  get 'schedule' => 'pages#schedule'
  get 'about' => 'pages#about'
end
