class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def change_account
        @new_user = User.find_by(username: params[:newName])
        render json: @new_user
    end

    def index
        @users = User.all.pluck("username")
        render json: @users
    end

    def high_scores
        @all_games = []
        User.all.each do |user|
            user.games.each do |game|
                @all_games.push(game)
            end
        end
        @all_games.sort_by!{|game| game.score}.reverse!
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
        @all_games = []
        @user.games.each do |game|
             @all_games.push(game)
        end
        # @all_scores.sort!.reverse!
        # @all_scores.slice!(5, @all_scores.length)
        # render json: @all_scores
        @all_games.sort_by!{|game| game.score}.reverse!
        @all_games.slice!(5, @all_games.length)
        render json: @all_games
    end

    def delete_score
        @user = User.find(params[:id])
        @the_game = @user.games.find_by(score: params[:score_value])
        @the_game.destroy
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
