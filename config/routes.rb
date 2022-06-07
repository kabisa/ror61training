Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'
  get '/hello', to: redirect('/')

  resources :links do
    resources :comments, only: [:create]
  end
  resources :posts

  root to: 'pages#home'
end
