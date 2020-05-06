class JoinersController < ApplicationController
    def index
        @joiners = Joiner.all 
        render json: @joiners
    end

    def create
        byebug
        @joiner = Joiner.create(
            user_id: params[:user_id],
            group_id: params[:group_id]
        )
        redirect_to "http://localhost:3001/group.html?id=#{params[:group_id]}&user=#{params[:current_user]}"
    end

    def destroy
        joiner_w_user = Joiner.select do |joiner|
            joiner.user_id == params[:user_id].to_i
        end

        joiner_w_user_and_group = joiner_w_user.find do |joiner|
            joiner.group_id == params[:group_id].to_i
        end
        
        joiner_w_user_and_group.destroy
        redirect_to "http://localhost:3001/show.html?user=#{params[:user_id]}"
    end

end