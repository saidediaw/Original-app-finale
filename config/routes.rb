Rails.application.routes.draw do

  get 'comments/create'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  resources :sheeps do
    resources :comments
  end
  root "cars#index"
  patch 'cars', to: 'cars#update'

end
