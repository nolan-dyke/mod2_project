class GroupsController < ApplicationController
    def index
        @groups = Group.all 
        render json: @groups, include: :contents
    end 

    def show
        @group = Group.find(params[:id])
        render json: @group, include: [:users, :contents]
    end 
    
    def create
        @group = Group.create(name: params[:name],
        description: params[:description])
        Joiner.new(params[:user_id], @group.id)
        # redirect_to "http://localhost:3001/show.html?user=#{params[:user_id]}"
    end 

    def destroy
        @group = Group.find(params[:id])
        @group.destroy
    end 
end
