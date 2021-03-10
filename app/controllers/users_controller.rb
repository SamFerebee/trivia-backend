class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def all_scores
        @all_games = []
        User.all.each do |user|
            user.games.each do |game|
                @all_games.push(game.score)
            end
        end
        @all_games.sort!.reverse!
        @all_games.slice!(5, @all_games.length)
        render json: @all_games
    end

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
