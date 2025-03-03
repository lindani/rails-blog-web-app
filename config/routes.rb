Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resources :articles
  root "articles#index"
end
