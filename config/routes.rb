Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/' => "homes#top"
  get '/books/' => "books#index"
  post '/books/' => 'books#create'
  get '/books/:id/' => 'books#show'
  get '/books/:id/edit/' => 'books#edit'
  # post '/books/' => 'books#create'

end