Rails.application.routes.draw do

  ###USER ROUTES
  get "/users", to: "users#index"
  get "/users/:id", to: "users#show"
  get "/allscores", to: "users#all_scores"
  post "/users", to: "users#create"
  delete "/users", to: "users#destroy"
  patch "/users/game/final", to: "users#final_game_info"
  patch "/users/scores", to: "users#get_user_scores"
  patch "/users/edit", to: "users#edit"


  ###CATEGORY
  get "/categories", to: "categories#index"

  ###GAME
  post "/games", to: "games#create"

end
