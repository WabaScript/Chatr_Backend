class UserChatsController < ApplicationController

    def index
        user_chats = UserChat.all
        render json: user_chats, except: [:updated_at] 
    end

    def show
        user_chat = UserChat.find(params[:id])
        render json: user_chat, except: [:updated_at]
    end

    def create
        user_chat = UserChat.create(user_chat_params)
        render json: user_chat, except: [:updated_at], status:201
    end

    def update
        user_chat = UserChat.find(params[:id])
        user_chat.update(user_chat_params)
        render json: user_chat, except: [:updated_at], status:201
    end

    def destroy
        user_chat = UserChat.find(params[:id])
        user_chat.destroy 
    end

    private
    def user_chat_params
        params.require(:user_chat).permit(:participant_id, :chat_id)
    end

end
