class UsersController < ApplicationController
    def index
        # if (params[:search])
        #     @users = User.where({name: params[:search]})
        #     redirect_to 'http://localhost:3001'
        # else
        @users = User.all
        render json: @users, include: [:groups]
        # end
    end

    def show
        @user = User.find(params[:id])
        if @user 
            render json: @user, include: [:groups, :joiners, :states]
        else 
            render json: {message: "We don't have user that matches this name in our database. Try again or create a new user."}
        end
    end

    def create
        @user = User.create(
            name: params[:name]
        )
        redirect_to "http://localhost:3001/show.html?user=#{@user.id}"
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
    end
end
