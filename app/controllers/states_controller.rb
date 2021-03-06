class StatesController < ApplicationController
    def index
        @states = State.all
        render json: @states, include: [:user, :content]
    end

    def show
        @state = State.find(params[:id])
        render json: @state, include: [:user, :content] 
    end

    def update
        @state = State.find(params[:id])
        @state.update(
            status: params[:status],
            user_id: params[:user_id],
            content_id: params[:content_id]
        )
    end

    def create
        @state = State.create(
            status: params[:status],
            user_id: params[:user_id],
            content_id: params[:content_id]
        )
        redirect_to "http://localhost:3001/group.html?id=#{params[:current_group]}&user=#{params[:current_user]}"
    end
end 
