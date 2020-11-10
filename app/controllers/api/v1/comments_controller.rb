class Api::V1::CommentsController < ApplicationController
    
    def index
        comments = Comment.all 
        render json: comments
    end
    
    def create
        comment = Comment.new(comment_params)
        
        if comment.save 
            render json: comment
        else
            render json: comment.errors.full_messages 
        end
 
    end
    
    def destroy
        comment = comment.find(params[:id])
        comment.destroy

        render json: {comment: comment, message: "Don't worry it's gone now!"} 
    end

    private

    def comment_params
        params.require(:comment).permit(:text, :user_id, :post_id)
    end
end
