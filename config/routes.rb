Rails.application.routes.draw do
  root "links#index"

  resources :links, only: [:new, :create, :show] do
    post "/upvote" => "upvotes#create"
  end
end
