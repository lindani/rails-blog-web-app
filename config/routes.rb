Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  get "welcome/index"
  resources :articles
  root "welcome#index"
end
