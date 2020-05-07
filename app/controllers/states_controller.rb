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
        render json: @state
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
