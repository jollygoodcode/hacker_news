Rails.application.routes.draw do
  root "links#index"

  resources :links, only: [:new, :create]
end
