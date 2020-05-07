class StatesController < ApplicationController
    def index
        @states = State.all
        render json: @states
    end

    def show
        @state = State.find(params[:id])
        render json: @state
    end

    def update
        @state = State.find(params[:id])
        @state.update(
            status: params[:status],
            user_id: params[:user_id],
            content_id: params[:content_id]
        )
        redirect_to "http://localhost:3001/group.html?id=#{params[:group_id]}&user=#{params[:current_user]}"
    end

    def create
        @state = State.create(
            status: params[:status],
            user_id: params[:user_id],
            content_id: params[:content_id]
        )
        render json: @state
    end
end
