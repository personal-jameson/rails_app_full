Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"

  namespace :api do
    get '/facebook/callback' => 'facebooks#callback'
    post '/facebook/callback' => 'facebooks#create'
  end
end
