Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :admins
  resources :hr
  resources :employees
  get '/download/:id',to: 'admins#download', as: "download"
  namespace :api do
    namespace :v1,defaults: { format: :json } do
      resources :admins , expect: :destroy do

      end
      resources :employees,:hr
     get '/delete_all', to: 'admins#index' 
    end

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
