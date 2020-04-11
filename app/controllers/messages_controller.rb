class MessagesController < ApplicationController

    def index
        messages = Message.all
        render json: messages, except: [:updated_at] 
    end

    def show
        message = Message.find(params[:id])
        render json: message, except: [:updated_at]
    end

    def create
        message = Message.create(message_params)
        render json: message, except: [:updated_at], status:201
    end

    def update
        message = Message.find(params[:id])
        message.update(message_params)
        render json: message, except: [:updated_at], status:201
    end

    def destroy
        message = Message.find(params[:id])
        message.destroy 
    end

    private
    def message_params
        params.require(:message).permit(:content, :user_id, :chat_id)
    end

end
