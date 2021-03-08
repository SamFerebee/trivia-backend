class GamesController < ApplicationController

    def create
        cat = Category.find_by(category: params["category"])
        @game = Game.create(lives_remaining: 3, score: 0, user_difficulty: 0, user_id: params["user"], category: cat)
        @user = User.find(params["user"])
        render json: @user.games.find_by(category: cat)
    end

end
