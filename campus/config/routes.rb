Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

  get "/books", to: "books#index", as: "books" # book_path =/books
  get '/books/new', to: "books#new", as: "new_book"# book_path(book)=/books/new
  
  get '/books/:id/edit', to: "books#edit",as: "edit_book"# edit_book_path(@book)

  get "/books/:id", to: "books#show", as: "book" # book_path(book)=/books/:id
  delete '/books/:id', to: "books#destroy"
  post '/books', to: "books#create"
  patch '/books/:id', to: "books#update"
  
  #author rout 
  get "/authors", to: "authors#index", as: "authors" # author_path =/authors
  get "/authors/new", to:"authors#new", as:"new_author"

  get "/authors/:id", to: "authors#show", as: "author" # author_path(author)=/authors/:id

  delete "/authors/:id", to:"authors#destroy"

  post "/authors", to:"authors#create"

  get '/authors/:id/edit', to: "authors#edit",as: "edit_author"
  patch '/authors/:id', to: "authors#update"

  root 'welcome#index'

end

