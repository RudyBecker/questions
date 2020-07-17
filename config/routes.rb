Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :questions, only: [:new, :create, :show] do
    resources :responses, only: [:new, :create]
  end

  resources :taggings, only: [:create]

  get "/dashboard", to: "dashboard#index"

  root to: 'questions#new'
end
