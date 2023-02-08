Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "/relation/author/create", to: "author#create";

  delete "/relation/author/delete", to: "author#delete";

  get "/relation/AllAuthors", to: "author#allAuthors";

  get "/relation/AllBooks", to: "book#allBooks";

  post "/relation/book/create", to: "book#create";

  delete "/relation/book/delete", to: "book#delete";

  get "/relation/findBook", to: "author#findBook";

  get '/pagination', to: 'book#page';

end
