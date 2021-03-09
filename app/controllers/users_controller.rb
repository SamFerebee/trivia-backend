class UsersController < ApplicationController
    
    def index
        @users = User.all
        render json: @users
    end
    def create
        found = User.find_by(username: params[:username])
        if found
            @user = found
        else
            @user = User.create(user_params)
        end
        render json: @user
    end

    def destroy
        @user = User.find(params["user_id"])
        @user.destroy
    end

    def final_game_info
        @user = User.find(params[:gameInfo][:user][:id])
        @current_game = @user.games.find(params[:gameInfo][:id])
        @current_game.update(score: params[:gameInfo][:score])
    end

    def get_user_scores
        @user = User.find(params[:user])
        @all_scores = []
        @user.games.each do |game|
            @all_scores.push(game.score)
        end
        render json: @all_scores
    end

    def edit
        @user = User.find(params[:userId])
        @user.update(username: params[:newName])
    end

    private
    def user_params
        params.require(:user).permit(:username)
    end
end
