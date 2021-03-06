Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'
  get '/hello', to: redirect('/')

  resources :links do
    resources :comments, only: [:create], module: :links
  end
  resources :posts do
    resources :comments, only: [:create], module: :posts
  end

  root to: 'pages#home'
end
