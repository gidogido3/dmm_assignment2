Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/' => 'homes#top', as: 'root'
  # get '/books' => 'books#index', as: 'books'
  # post '/books' => 'books#create'
  # get '/books/:id/edit' => 'books#edit'
  # get '/books/:id' => 'books#show', as: 'book'
  # get '/books/:id/edit' => 'books#edit', as: 'edit_book'
  # patch '/books/:id' => 'books#update', as: 'update_book'
  # delete '/books/:id' => 'books#destroy', as: 'destroy_book'

  resources :books

end