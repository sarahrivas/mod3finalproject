Rails.application.routes.draw do
  resources :scores
  namespace :api do
    namespace :v1 do
      resources :answers
      resources :questions
      resources :users
      resources :languages
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
