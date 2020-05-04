class UsersController < ApplicationController
    def index
        if 
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:name])
        if @user 
            render json: @user, include: [:groups]
        else 
            render json: {message: "We don't have user that matches this name in our database. Try again or create a new user."}
        end
    end
end
