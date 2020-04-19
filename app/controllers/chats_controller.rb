class ChatsController < ApplicationController
    
    def index
        chats = Chat.all
        render json: chats
    end

    def show
        chat = Chat.find(params[:id])
        render json: chat, except: [:updated_at]
    end

    def create
        chat = Chat.new(chat_params)
        if chat.save
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                ChatSerializer.new(chat)
            ).serializable_hash
            ActionCable.server.broadcast 'chats_channel', serialized_data
            head :ok
        end
        # render json: chat, except: [:updated_at], status:201
    end

    def update
        chat = Chat.find(params[:id])
        chat.update(chat_params)
        render json: chat, except: [:updated_at], status:201
    end

    def destroy
        chat = Chat.find(params[:id])
        chat.destroy 
    end

    private
    def chat_params
        params.require(:chat).permit(:topic, :owner_id)
    end

end
