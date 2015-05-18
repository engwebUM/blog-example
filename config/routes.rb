Rails.application.routes.draw do
  root to: 'articles#index'

  resources :articles, only: [:index, :show]

  namespace :api, defaults: { format: :json }, constraints: { format: :json } do

    namespace :v1 do
      resources :articles, only: [:index, :show, :create]
    end
  end
end
