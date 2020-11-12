class Api::V1::UsersController < ApplicationController
    # before_action {self.email = email.downcase} downcase before saving an email


    def index
        users = User.all 
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end
    

    def create
        
        #searchers for the email if no record is found, creates a record
        #with the given email and username 
        user = User.create_with(profile_pic: params[:profile_pic]).find_or_create_by(email: params[:email].downcase, username: params[:username])
        
        if user.save
            render json: user
        else
            # render json: user.errors.full_messages
            render json: {error: "Please enter a username and email!"}, status: 403

        end
    end
    
    
    def update
        user = User.find(params[:id])
        
        #assigns new attributes to user  
        user.assign_attributes(user_params)
        
        #checks for validation errors
        if user.valid?      
            #saves the assigned updates to the database
            user.save
            render json: user
        else
            render json: user.errors.full_messages
        end
    end
    
    
    def destroy
        user = User.find(params[:id])
        user.destroy

        render json: {message: "We're so sad to see you go ! :(" }
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :profile_pic)
    end
end
