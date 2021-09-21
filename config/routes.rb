Rails.application.routes.draw do

    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'pages/index'
  get 'page/index'
  get 'comments/create'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users
  get "/aboutus/*aboutu" => "aboutus#show"
  get "/pages/:page" => "pages#about"
  resources :pages

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  resources :cars do
    resources :comments
  end
  root "cars#index"
  patch 'cars', to: 'cars#update'
resources :cars
resources :aboutus
end
