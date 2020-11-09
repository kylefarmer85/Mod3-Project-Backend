class Api::V1::UserController < ApplicationController
    before_save {self.email = email.downcase} #downcase before saving an email

    def index
        users = User.all 
        render json: users
    end

    def show
    
    end
    
    def new
    
    end

    def create
        #searchers for the email if no record is found, creates a record
        #with the given email and username 
        User.create_with(username: params[:username] ).find_or_create_by(email: params[:email])
        
        render json: user
    end
    
    def edit
    
    end
    
    def update
    
    end
    
    
    def destroy
    
    end
end
