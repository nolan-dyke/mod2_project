class GroupsController < ApplicationController
    def index
        @groups = Group.all 
        render json: @groups 
    end 

    def show
        @group = Group.find(params[:id])
        render json: @group, include: :users
    end 
    
    def create
        @group = Group.create(name: params[:name],
        description: params[:description])
        @joiner = Joiner.create(user_id: params[:user],
        group_id: @group.id
        )
    end 

    def destroy
        @group = Group.find(params[:id])
        @group.destroy
    end 
end
