Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :projects, only: [ :index, :show, :create, :update, :destroy ] do
        resources :tasks, only: [ :create ]
      end
       resources :tasks, only: [ :update, :destroy ]
    end
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
