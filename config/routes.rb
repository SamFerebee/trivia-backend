Rails.application.routes.draw do

  ###USER ROUTES
  get "/users", to: "users#index"
  post "/users", to: "users#create"
  delete "/users", to: "users#destroy"

  ###CATEGORY
  get "/categories", to: "categories#index"

  ###GAME
  post "/games", to: "games#create"

end
