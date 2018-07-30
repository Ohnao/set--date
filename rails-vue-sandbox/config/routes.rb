Rails.application.routes.draw do
  resources :todo
  root 'application#hello'
end
