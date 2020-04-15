class UsersController < ApplicationController

    def index
        users = User.all
        render json: users, except: [:updated_at] 
    end

    def show
        user = User.find(params[:id])
        render json: user, except: [:updated_at]
    end

    def create
        user = User.create(user_params)
        if user.valid?
            render json: user, except: [:updated_at], status:201
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user, except: [:updated_at], status:201
    end

    def destroy
        user = User.find(params[:id])
        user.destroy 
    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :username, :pro_pic)
    end

end
