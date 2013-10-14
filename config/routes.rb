Quiz::Application.routes.draw do
  resources :scores

  root 'scores#index'

  namespace :api do
    api version: 1 do
      resources :scores, only: [:index, :show, :create, :update]
    end
  end
end
