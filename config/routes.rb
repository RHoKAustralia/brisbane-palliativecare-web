RhokBrisbane2013::Application.routes.draw do
  root to: 'application#index'
  
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  namespace :api, constraints: { format: /json/ } do
    namespace :v1 do
      resources :resources
      resources :tags
    end
  end
end
