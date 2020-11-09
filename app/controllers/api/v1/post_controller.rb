class Api::V1::PostController < ApplicationController

    def index
        posts = Post.all 
        render json: posts
    end
    
    def show
        post = Post.find(params[:id])
        render json: post
    end
    
    def create
        post = Post.new(post_params)
        
        if post.save 
            render json: post
        else
            render json: post.errors.full_messages 
        end

    end
    
    def update
        post = Post.find(params[:id])
        
        #assigns new attributes to post  
        post.assign_attributes(post_params)
        
        #checks for validation errors
        if post.valid?      
            #saves the assigned updates to the database
            post.save
            render json: post
        else
            render json: post.errors.full_messages
        end
    end
    
    
    def destroy
        post = Post.find(params[:id])
        post.destroy

        render json: {post: post, message: "Don't worry it's gone now."} 
    end

    
    
    private

    def post_params
        params.require(:post).permit(:title, :content, :image_url, :github_url, :upvote, :user_id)
    end
end
