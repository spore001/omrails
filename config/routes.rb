Rails.application.routes.draw do
  devise_for :users
  as :user do
    get 'signin', to: 'devise/sessions#new'
    delete 'signout', to: 'devise/sessions#destroy'
    get 'signup', to: 'devise/registrations#new'
  end
  get 'pages/home'
  get 'about' => 'pages#about'

  root "pages#home"
end
