class AuthController < ApplicationController

    def login
      user = User.find_by(username: params[:username])
  
      if user && user.authenticate(params[:password])
        render json: user
      else
        render json: {errors: "Seriously?"}
      end
    end
  
    def auto_login
        user = User.find_by(id: request.headers["Authorization"])
  
       if user
         render json: user
       else 
         render json: {errors: "Hey cool cat/kitten, are you sure that's you?"}
       end
      
    end
  end