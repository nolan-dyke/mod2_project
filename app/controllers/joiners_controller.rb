class JoinersController < ApplicationController
    def index
        @joiners = Joiner.all 
        render json: @joiners
    end 
end
