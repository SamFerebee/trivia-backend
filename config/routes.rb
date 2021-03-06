Rails.application.routes.draw do

  ###USER ROUTES
  get "/users", to: "users#index"
  get "/users/:id", to: "users#show"
  get "/highscores", to: "users#high_scores"
  post "/users", to: "users#create"
  delete "users/:id", to: "users#destroy"
  patch "/users/game/final", to: "users#final_game_info"
  get "/users/:id/scores", to: "users#get_user_scores"
  patch "/users/:id/edit", to: "users#edit"
  delete "users/:id/deletescore/:score_value", to: "users#delete_score"
  get "/users/change/:newName", to:"users#change_account"


  ###CATEGORY
  get "/categories", to: "categories#index"

  ###GAME
  post "/games", to: "games#create"

end
