class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def all_scores
        @all_games = []
        @names_scores = {}
        User.all.each do |user|
            @names_scores[user.username] = []
            user.games.each do |game|
                @names_scores[user.username].push(game.score)
            end
        end
        ##@all_games.sort!.reverse!
        ##@all_games.slice!(5, @all_games.length)
        #@names_scores.sort_by {|k, v| v}
        render json: @names_scores
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
        @user = User.find(params[:id])
        @user.destroy
    end

    def final_game_info
        @user = User.find(params[:gameInfo][:user][:id])
        @current_game = @user.games.find(params[:gameInfo][:id])
        @current_game.update(score: params[:gameInfo][:score])
    end

    def get_user_scores
        @user = User.find(params[:id])
        @all_scores = []
        @user.games.each do |game|
            @all_scores.push(game.score)
        end
        render json: @all_scores
    end

    def edit
        @user = User.find(params[:id])
        @user.update(username: params[:newName])
    end

    private
    def user_params
        params.require(:user).permit(:username)
    end
end
