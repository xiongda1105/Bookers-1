Rails.application.routes.draw do
  
  get "/" => "homes#top"
  get "books" => "books#new"
  post "books" => "books#create"
  get "books/:id" => "books#show"
  get "books/:id/edit" => "books#edit"
  patch "books/:id" => "books#update"
  delete "books/:id" => "books#destroy"

end