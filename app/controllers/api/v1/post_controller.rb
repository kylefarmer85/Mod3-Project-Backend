class Api::V1::PostController < ApplicationController

    def index
        posts = Post.all 
        render json: posts
    end
    
    def show
    
    end

    def new
    
    end
    
    def create
    
    end
    
    def edit
    
    end
    
    def update
    
    end
    
    
    def destroy
    
    end
end
