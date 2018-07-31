Rails.application.routes.draw do
  resources :test_mvcs
  resources :todo
  root 'application#hello'
end
