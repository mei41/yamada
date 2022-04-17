Rails.application.routes.draw do
    get "/books", to: "books#index"
    get "/books/new", to: "books#new",  as: "new_book" 
    post "/books", to: "books#create"
    get "/books/:id", to: "books#show", as: "book" 
end