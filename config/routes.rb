Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :questions, only: [:new, :create, :show] do
    resources :responses, only: [:new, :create]
  end

  root to: 'questions#new'
end
