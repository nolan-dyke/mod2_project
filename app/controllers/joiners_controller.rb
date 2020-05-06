class JoinersController < ApplicationController
    def index
        @joiners = Joiner.all 
        render json: @joiners
    end

    def create
        @joiner = Joiner.create(
            user_id: params[:user_id],
            group_id: params[:group_id]
        )
        redirect_to "http://localhost:3001/group.html?id=#{params[:group_id]}&user=#{params[:current_user]}"
    end


end