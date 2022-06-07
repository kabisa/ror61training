Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'
  get '/hello', to: redirect('/')

  resources :links
  resources :posts

  root to: 'pages#home'
end
