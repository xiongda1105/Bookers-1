Rails.application.routes.draw do
  
  get "/" => "homes#top"
  get "books" => "books#new"
  post "books" => "books#create"

end