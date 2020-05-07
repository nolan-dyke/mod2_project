class ContentsController < ApplicationController

    def index
        @contents = Content.all
        render json: @contents
    end
    
    def show
    end

    def create
        @content = Content.create(
            message: params[:message],
            image: params[:image],
            user_id: params[:user_id],
            group_id: params[:group_id]
        )
        redirect_to "http://localhost:3001/group.html?id=#{params[:group_id]}&user=#{params[:user_id]}"
    end
end
