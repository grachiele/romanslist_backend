Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end 
  # post '/post/new', to: 'post#create'
  # get '/post/:id', to: 'post#show'
end
