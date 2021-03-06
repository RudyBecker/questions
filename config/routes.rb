Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      get '/responses', to: 'responses#index'
    end
  end
  
  resources :questions, only: [:new, :create, :show] do
    resources :responses, only: [:new, :create]
  end

  resources :taggings, only: [:create]

  get "/dashboard", to: "dashboard#index"
  get "/react-dashboard", to: "dashboard#react_dashboard"
  
  root to: 'questions#new'
end
